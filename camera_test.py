import cv2
import sys
import time

CAMERA_CANDIDATES = [2]


def main():
    cap = None
    chosen = None
    for idx in CAMERA_CANDIDATES:
        for backend, name in ((cv2.CAP_AVFOUNDATION, "AVFoundation"), (cv2.CAP_ANY, "Default")):
            trial = cv2.VideoCapture(idx, backend)
            if not trial.isOpened():
                trial.release()
                continue

            # Require at least one real frame; a mere opened handle is not enough.
            got_frame = False
            start = time.time()
            while time.time() - start < 2.0:
                ok, frame = trial.read()
                if ok and frame is not None and frame.size > 0:
                    got_frame = True
                    break
                time.sleep(0.03)

            if got_frame:
                cap = trial
                chosen = (idx, name)
                break
            trial.release()
        if cap is not None:
            break

    if cap is None:
        tried = ", ".join(str(i) for i in CAMERA_CANDIDATES)
        print(
            f"Could not get frames from any camera (indices {tried}). "
            "This is usually macOS camera permission denial.",
            file=sys.stderr,
        )
        raise SystemExit(1)

    print(f"Camera is ON: index {chosen[0]} ({chosen[1]}). Press 'q' to quit.")
    while True:
        ok, frame = cap.read()
        if not ok or frame is None:
            print("Lost camera frames.", file=sys.stderr)
            break

        cv2.imshow("Camera Test", frame)
        if cv2.waitKey(1) & 0xFF == ord("q"):
            break

    cap.release()
    cv2.destroyAllWindows()


if __name__ == "__main__":
    main()
