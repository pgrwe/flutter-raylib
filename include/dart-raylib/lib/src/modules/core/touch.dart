import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';

/// Get touch position X for touch point 0 (relative to screen size).
int getTouchX() {
  return library.GetTouchX();
}

/// Get touch position Y for touch point 0 (relative to screen size).
int getTouchY() {
  return library.GetTouchY();
}

/// Get touch position XY for a touch point index (relative to screen size).
Vector2 getTouchPosition(int index) {
  return Vector2.fromRef(library.GetTouchPosition(index));
}

/// Get touch point identifier for given index.
int getTouchPointId(int index) {
  return library.GetTouchPointId(index);
}

/// Get number of touch points.
int getTouchPointCount() {
  return library.GetTouchPointCount();
}
