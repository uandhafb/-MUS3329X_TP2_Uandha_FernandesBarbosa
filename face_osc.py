import cv2
import mediapipe as mp
from pythonosc import udp_client
import time
import sys
import os
import argparse

# --- CONFIG ---
IP = "127.0.0.1"
PORT = 8000
CAMERA_CANDIDATES = [2]
client = udp_client.SimpleUDPClient(IP, PORT)
REPORT_INTERVAL_SEC = 30.0

# The 12 shapes we want for Max
SELECTED_SHAPES = [
    'jawOpen', 'browInnerUp', 'mouthSmileLeft', 'mouthSmileRight',
    'mouthPucker', 'eyeBlinkLeft', 'eyeBlinkRight', 'mouthLowerDownLeft',
    'mouthLowerDownRight', 'mouthFunnel'
]

# --- MEDIAPIPE INITIALIZATION ---
BaseOptions = mp.tasks.BaseOptions
FaceLandmarker = mp.tasks.vision.FaceLandmarker
FaceLandmarkerOptions = mp.tasks.vision.FaceLandmarkerOptions
VisionRunningMode = mp.tasks.vision.RunningMode
if hasattr(mp, "solutions") and hasattr(mp.solutions, "face_mesh"):
    FACE_MESH_CONNECTIONS = tuple(mp.solutions.face_mesh.FACEMESH_TESSELATION)
else:
    FACE_MESH_CONNECTIONS = tuple(
        mp.tasks.vision.FaceLandmarksConnections.FACE_LANDMARKS_TESSELATION
    )

options = FaceLandmarkerOptions(
    base_options=BaseOptions(model_asset_path='face_landmarker.task'),
    running_mode=VisionRunningMode.VIDEO,
    output_face_blendshapes=True,
    num_faces=1
)

def parse_args():
    parser = argparse.ArgumentParser(description="Face OSC sender")
    parser.add_argument(
        "--camera",
        type=int,
        default=CAMERA_CANDIDATES[0],
        help="Camera index to use (default: 2).",
    )
    parser.add_argument(
        "--ip",
        default=IP,
        help="OSC destination IP (default: 127.0.0.1).",
    )
    parser.add_argument(
        "--port",
        type=int,
        default=PORT,
        help="OSC destination port (default: 8000).",
    )
    return parser.parse_args()


def open_camera(camera_candidates):
    # Try common camera indices with native macOS backend first.
    for idx in camera_candidates:
        for backend, name in ((cv2.CAP_AVFOUNDATION, "AVFoundation"), (cv2.CAP_ANY, "Default")):
            print(f"Trying camera index {idx} ({name})...")
            trial = cv2.VideoCapture(idx, backend)
            if not trial.isOpened():
                trial.release()
                continue
            # Warm up camera; first frames can be empty.
            for _ in range(60):
                ok, frame = trial.read()
                if ok and frame is not None and frame.size > 0:
                    print(f"Using camera index {idx} ({name})")
                    return trial
                time.sleep(0.03)
            trial.release()
    return None

def main():
    # Keep matplotlib cache writable inside the project to avoid startup warnings.
    os.environ.setdefault("MPLCONFIGDIR", os.path.join(os.getcwd(), ".mplconfig"))
    os.makedirs(os.environ["MPLCONFIGDIR"], exist_ok=True)

    args = parse_args()
    camera_candidates = [args.camera]
    osc_client = udp_client.SimpleUDPClient(args.ip, args.port)

    cap = open_camera(camera_candidates)

    if cap is None:
        tried = ", ".join(str(i) for i in camera_candidates)
        print(
            "Error: could not open any camera.\n"
            f"Tried indices {tried}. Check macOS camera permissions for Terminal/VSCode "
            "and close OBS/Zoom virtual cameras.",
            file=sys.stderr,
        )
        raise SystemExit(1)

    with FaceLandmarker.create_from_options(options) as landmarker:
        print(f"Sending OSC to {args.ip}:{args.port}. Press 'q' to quit.")
        last_report_time = time.monotonic()
        last_report_scores = {name: 0.0 for name in SELECTED_SHAPES}
        
        while cap.isOpened():
            ret, frame = cap.read()
            if not ret or frame is None:
                time.sleep(0.01)
                continue

            frame = cv2.flip(frame, 1)
            rgb_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
            mp_image = mp.Image(image_format=mp.ImageFormat.SRGB, data=rgb_frame)
            
            # Detection
            timestamp_ms = time.monotonic_ns() // 1_000_000
            result = landmarker.detect_for_video(mp_image, timestamp_ms)
            selected_scores = {name: 0.0 for name in SELECTED_SHAPES}

            # Draw MediaPipe mesh + landmarks on preview frame.
            if result.face_landmarks:
                h, w = frame.shape[:2]
                for face_landmarks in result.face_landmarks:
                    for start_idx, end_idx in FACE_MESH_CONNECTIONS:
                        if start_idx >= len(face_landmarks) or end_idx >= len(face_landmarks):
                            continue
                        p1 = face_landmarks[start_idx]
                        p2 = face_landmarks[end_idx]
                        x1, y1 = int(p1.x * w), int(p1.y * h)
                        x2, y2 = int(p2.x * w), int(p2.y * h)
                        cv2.line(frame, (x1, y1), (x2, y2), (80, 200, 120), 1, cv2.LINE_AA)
                    for lm in face_landmarks:
                        x, y = int(lm.x * w), int(lm.y * h)
                        cv2.circle(frame, (x, y), 1, (0, 255, 255), -1, cv2.LINE_AA)

            if result.face_blendshapes:
                # Get the list of 52 shapes
                all_shapes = result.face_blendshapes[0]
                
                # Filter and send only our 12 shapes
                for shape in all_shapes:
                    if shape.category_name in SELECTED_SHAPES:
                        score = float(shape.score)
                        selected_scores[shape.category_name] = score
                        osc_client.send_message(f"/face/{shape.category_name}", score)

                # Fixed-order feature vector for ML ingestion.
                osc_client.send_message(
                    "/face/features",
                    [selected_scores[name] for name in SELECTED_SHAPES]
                )
                osc_client.send_message("/face/present", 1)
            else:
                # Explicit reset when no face is detected to avoid stale values in Max.
                for name in SELECTED_SHAPES:
                    osc_client.send_message(f"/face/{name}", 0.0)
                osc_client.send_message("/face/features", [0.0] * len(SELECTED_SHAPES))
                osc_client.send_message("/face/present", 0)

            # Draw current measurement values on top of the mesh preview.
            y = 20
            for name in SELECTED_SHAPES:
                value = selected_scores[name]
                cv2.putText(
                    frame,
                    f"{name}: {value:.3f}",
                    (10, y),
                    cv2.FONT_HERSHEY_SIMPLEX,
                    0.45,
                    (255, 255, 255),
                    1,
                    cv2.LINE_AA,
                )
                y += 16

            # Every 30 seconds, print how values changed since last report.
            now = time.monotonic()
            if now - last_report_time >= REPORT_INTERVAL_SEC:
                print("\n--- 30s blendshape change report ---")
                for name in SELECTED_SHAPES:
                    delta = selected_scores[name] - last_report_scores[name]
                    print(f"{name:>20}: {selected_scores[name]:.3f} (delta {delta:+.3f})")
                last_report_scores = selected_scores.copy()
                last_report_time = now

            cv2.imshow('MediaPipe Face OSC', frame)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break

    cap.release()
    cv2.destroyAllWindows()


if __name__ == "__main__":
    main()
