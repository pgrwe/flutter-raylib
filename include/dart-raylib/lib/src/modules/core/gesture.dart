import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';

/// Enable a set of gestures using flags.
///
/// View [Gesture] for more information.
void setGesturesEnabled(int flags) {
  return library.SetGesturesEnabled(flags);
}

/// Check if a gesture have been detected.
///
/// View [Gesture] for more information.
bool isGestureDetected(int gesture) {
  return library.IsGestureDetected(gesture);
}

/// Get latest detected gesture.
int getGestureDetected() {
  return library.GetGestureDetected();
}

/// Get gesture hold time in milliseconds.
double getGestureHoldDuration() {
  return library.GetGestureHoldDuration();
}

/// Get gesture drag vector.
Vector2 getGestureDragVector() {
  return Vector2.fromRef(library.GetGestureDragVector());
}

/// Get gesture drag angle.
double getGestureDragAngle() {
  return library.GetGestureDragAngle();
}

/// Get gesture pinch delta.
Vector2 getGesturePinchVector() {
  return Vector2.fromRef(library.GetGesturePinchVector());
}

/// Get gesture pinch angle.
double getGesturePinchAngle() {
  return library.GetGesturePinchAngle();
}
