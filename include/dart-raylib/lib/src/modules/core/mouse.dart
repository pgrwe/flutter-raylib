import 'package:raylib/raylib.dart';
import 'package:raylib/src/enums/mouse_button.dart';
import 'package:raylib/src/enums/mouse_cursor.dart';
import 'package:raylib/src/library.dart';

/// Check if a mouse button has been pressed once.
bool isMouseButtonPressed(MouseButton button) {
  return library.IsMouseButtonPressed(mouseButtonToNative(button));
}

/// Check if a mouse button is being pressed.
bool isMouseButtonDown(MouseButton button) {
  return library.IsMouseButtonDown(mouseButtonToNative(button));
}

/// Check if a mouse button has been released once.
bool isMouseButtonReleased(MouseButton button) {
  return library.IsMouseButtonReleased(mouseButtonToNative(button));
}

/// Check if a mouse button is NOT being pressed.
bool isMouseButtonUp(MouseButton button) {
  return library.IsMouseButtonUp(mouseButtonToNative(button));
}

/// Get mouse position X.
int getMouseX() {
  return library.GetMouseX();
}

/// Get mouse position Y.
int getMouseY() {
  return library.GetMouseY();
}

/// Get mouse position XY.
Vector2 getMousePosition() {
  return Vector2.fromRef(library.GetMousePosition());
}

/// Get mouse delta between frames.
Vector2 getMouseDelta() {
  return Vector2.fromRef(library.GetMouseDelta());
}

/// Set mouse position XY.
void setMousePosition(int x, int y) {
  return library.SetMousePosition(x, y);
}

/// Set mouse offset.
void setMouseOffset(int offsetX, int offsetY) {
  return library.SetMouseOffset(offsetX, offsetY);
}

/// Set mouse scaling.
void setMouseScale(double scaleX, double scaleY) {
  return library.SetMouseScale(scaleX, scaleY);
}

/// Get mouse wheel movement Y.
double getMouseWheelMove() {
  return library.GetMouseWheelMove();
}

/// Set mouse cursor.
void setMouseCursor(MouseCursor cursor) {
  return library.SetMouseCursor(mouseCursorToNative(cursor));
}
