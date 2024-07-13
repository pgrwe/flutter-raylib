import 'package:raylib/raylib.dart';
import 'package:raylib/src/enums/camera_mode.dart';
import 'package:raylib/src/library.dart';

/// Set camera mode (multiple camera modes available).
///
/// View [CameraMode] for more information.
void setCameraMode(Camera3D camera, CameraMode mode) {
  return library.SetCameraMode(camera.ref, cameraModeToNative(mode));
}

/// Update camera position for selected mode.
void updateCamera(Camera3D camera) {
  return library.UpdateCamera(camera.pointer);
}

/// Set camera pan key to combine with mouse movement (free camera).
void setCameraPanControl(int keyPan) {
  return library.SetCameraPanControl(keyPan);
}

/// Set camera alt key to combine with mouse movement (free camera).
void setCameraAltControl(int keyAlt) {
  return library.SetCameraAltControl(keyAlt);
}

/// Set camera smooth zoom key to combine with mouse (free camera).
void setCameraSmoothZoomControl(int keySmoothZoom) {
  return library.SetCameraSmoothZoomControl(keySmoothZoom);
}

/// Set camera move controls (1st person and 3rd person cameras).
void setCameraMoveControls(
  int keyFront,
  int keyBack,
  int keyRight,
  int keyLeft,
  int keyUp,
  int keyDown,
) {
  return library.SetCameraMoveControls(
    keyFront,
    keyBack,
    keyRight,
    keyLeft,
    keyUp,
    keyDown,
  );
}
