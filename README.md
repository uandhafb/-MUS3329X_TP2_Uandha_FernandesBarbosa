# Face OSC Stream (MediaPipe -> Max/MSP)

This project captures face features from a webcam using MediaPipe Face Landmarker and sends them via OSC (UDP), so you can train a small neural network in Max/MSP.

## Files

- `face_osc.py`: webcam capture + MediaPipe inference + OSC sender
- `face_landmarker.task`: MediaPipe model file

## Requirements

- Python 3.10+
- Webcam
- Max/MSP (or any OSC receiver)

Use the project virtual environment (`venv312`) and install packages:

```bash
python3.12 -m venv venv312
source venv312/bin/activate
python -m pip install --upgrade pip
python -m pip install mediapipe opencv-python python-osc
```

## Run

From the project folder:

```bash
source venv312/bin/activate
python face_osc.py --camera 2 --ip 127.0.0.1 --port 8000
```

Press `q` in the preview window to quit.

Current script config is in `face_osc.py`:

- `IP = "127.0.0.1"`
- `PORT = 8000`
- model path: `face_landmarker.task`
- camera index default: `2`

## OSC Output

The script sends these addresses:

- `/face/present` -> `0` or `1`
- `/face/features` -> fixed 10-float vector in this order:
  `jawOpen, browInnerUp, mouthSmileLeft, mouthSmileRight, mouthPucker, eyeBlinkLeft, eyeBlinkRight, mouthLowerDownLeft, mouthLowerDownRight, mouthFunnel`
- `/face/<shape_name>` -> individual float score for each selected shape (e.g. `/face/jawOpen`)

When no face is detected, the script sends zeros for all selected shape addresses and `/face/features`, plus `/face/present 0`.

## Max/MSP Notes

- Use `udpreceive 8000` and `route /face/present /face/features`.
- For training, use `/face/features` as your input vector.
- If needed, also route individual controls like `/face/jawOpen`, `/face/eyeBlinkLeft`, etc.

## Quick Validation

1. Start `face_osc.py`.
2. In Max, print incoming OSC messages.
3. Confirm `/face/present` toggles to `1` when your face is visible.
4. Confirm `/face/features` changes with expressions (smile, blink, jaw open).
5. Confirm all values return to `0` when your face leaves the frame.

## Troubleshooting

- If you see MediaPipe `dlopen`/`libmediapipe.dylib` errors, make sure you are in `venv312`:
  ```bash
  source venv312/bin/activate
  which python
  ```
- If camera fails to open, verify macOS camera permissions for Terminal/VS Code and close apps using the camera (Zoom/OBS/etc.).
