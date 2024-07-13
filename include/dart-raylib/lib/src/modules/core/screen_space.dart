import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';

/// Get a ray trace from mouse position.
Ray getMouseRay(Vector2 mousePosition, Camera3D camera) {
  return Ray.fromRef(library.GetMouseRay(mousePosition.ref, camera.ref));
}

/// Get camera transform matrix (view matrix).
Matrix getCameraMatrix(Camera3D camera) {
  return Matrix.fromRef(library.GetCameraMatrix(camera.ref));
}

/// Get camera 2d transform matrix.
Matrix getCameraMatrix2D(Camera2D camera) {
  return Matrix.fromRef(library.GetCameraMatrix2D(camera.ref));
}

/// Get the screen space position for a 3d world space position.
Vector2 getWorldToScreen(Vector3 position, Camera3D camera) {
  return Vector2.fromRef(library.GetWorldToScreen(position.ref, camera.ref));
}

/// Get size position for a 3d world space position.
Vector2 getWorldToScreenEx(
  Vector3 position,
  Camera3D camera,
  int width,
  int height,
) {
  return Vector2.fromRef(
    library.GetWorldToScreenEx(position.ref, camera.ref, width, height),
  );
}

/// Get the screen space position for a 2d camera world space position.
Vector2 getWorldToScreen2D(Vector2 position, Camera2D camera) {
  return Vector2.fromRef(library.GetWorldToScreen2D(position.ref, camera.ref));
}

/// Get the world space position for a 2d camera screen space position.
Vector2 getScreenToWorld2D(Vector2 position, Camera2D camera) {
  return Vector2.fromRef(library.GetScreenToWorld2D(position.ref, camera.ref));
}
