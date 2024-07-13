import 'package:raylib/src/library.dart';

/// Shows cursor.
void showCursor() {
  return library.ShowCursor();
}

/// Hides cursor.
void hideCursor() {
  return library.HideCursor();
}

/// Check if cursor is not visible.
bool isCursorHidden() {
  return library.IsCursorHidden();
}

/// Enables cursor (unlock cursor).
void enableCursor() {
  return library.EnableCursor();
}

/// Disables cursor (lock cursor).
void disableCursor() {
  return library.DisableCursor();
}

/// Check if cursor is on the screen.
bool isCursorOnScreen() {
  return library.IsCursorOnScreen();
}
