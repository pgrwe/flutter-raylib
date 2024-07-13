import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Gesture.
///
/// NOTE: It could be used as flags to enable only some gestures.
abstract class Gesture {
  /// No gesture.
  static const int none = raylib.Gesture.NONE;

  /// Tap gesture.
  static const int tap = raylib.Gesture.TAP;

  /// Double tap gesture.
  static const int doubleTap = raylib.Gesture.DOUBLETAP;

  /// Hold gesture.
  static const int hold = raylib.Gesture.HOLD;

  /// Drag gesture.
  static const int drag = raylib.Gesture.DRAG;

  /// Swipe right gesture.
  static const int swipeRight = raylib.Gesture.SWIPE_RIGHT;

  /// Swipe left gesture.
  static const int swipeLeft = raylib.Gesture.SWIPE_LEFT;

  /// Swipe up gesture.
  static const int swipeUp = raylib.Gesture.SWIPE_UP;

  /// Swipe down gesture.
  static const int swipeDown = raylib.Gesture.SWIPE_DOWN;

  /// Pinch in gesture.
  static const int pinchIn = raylib.Gesture.PINCH_IN;

  /// Pinch out gesture.
  static const int pinchOut = raylib.Gesture.PINCH_OUT;
}
