import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Gamepad buttons.
enum GamepadButton {
  /// Unknown button, just for error checking.
  unknown,

  /// Gamepad left DPAD up button.
  leftFaceUp,

  /// Gamepad left DPAD right button.
  leftFaceRight,

  /// Gamepad left DPAD down button.
  leftFaceDown,

  /// Gamepad left DPAD left button.
  leftFaceLeft,

  /// Gamepad right button up (i.e. PS3: Triangle, Xbox: Y).
  rightFaceUp,

  /// Gamepad right button right (i.e. PS3: Square, Xbox: X).
  rightFaceright,

  /// Gamepad right button down (i.e. PS3: Cross, Xbox: A).
  rightFaceDown,

  /// Gamepad right button left (i.e. PS3: Circle, Xbox: B).
  rightFaceLeft,

  /// Gamepad top/back trigger left (first), it could be a trailing button.
  leftTrigger1,

  /// Gamepad top/back trigger left (second), it could be a trailing button.
  leftTrigger2,

  /// Gamepad top/back trigger right (one), it could be a trailing button.
  rightTrigger1,

  /// Gamepad top/back trigger right (second), it could be a trailing button.
  rightTrigger2,

  /// Gamepad center buttons, left one (i.e. PS3: Select).
  middleLeft,

  /// Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX).
  middle,

  /// Gamepad center buttons, right one (i.e. PS3: Start).
  middleRight,

  /// Gamepad joystick pressed button left.
  leftThumb,

  /// Gamepad joystick pressed button right.
  rightThumb,
}

/// Convert given enum to native value.
int gamepadButtonToNative(GamepadButton button) {
  switch (button) {
    case GamepadButton.unknown:
      return raylib.GamepadButton.UNKNOWN;
    case GamepadButton.leftFaceUp:
      return raylib.GamepadButton.LEFT_FACE_UP;
    case GamepadButton.leftFaceRight:
      return raylib.GamepadButton.LEFT_FACE_RIGHT;
    case GamepadButton.leftFaceDown:
      return raylib.GamepadButton.LEFT_FACE_DOWN;
    case GamepadButton.leftFaceLeft:
      return raylib.GamepadButton.LEFT_FACE_LEFT;
    case GamepadButton.rightFaceUp:
      return raylib.GamepadButton.RIGHT_FACE_UP;
    case GamepadButton.rightFaceright:
      return raylib.GamepadButton.RIGHT_FACE_RIGHT;
    case GamepadButton.rightFaceDown:
      return raylib.GamepadButton.RIGHT_FACE_DOWN;
    case GamepadButton.rightFaceLeft:
      return raylib.GamepadButton.RIGHT_FACE_LEFT;
    case GamepadButton.leftTrigger1:
      return raylib.GamepadButton.LEFT_TRIGGER_1;
    case GamepadButton.leftTrigger2:
      return raylib.GamepadButton.LEFT_TRIGGER_2;
    case GamepadButton.rightTrigger1:
      return raylib.GamepadButton.RIGHT_TRIGGER_1;
    case GamepadButton.rightTrigger2:
      return raylib.GamepadButton.RIGHT_TRIGGER_2;
    case GamepadButton.middleLeft:
      return raylib.GamepadButton.MIDDLE_LEFT;
    case GamepadButton.middle:
      return raylib.GamepadButton.MIDDLE;
    case GamepadButton.middleRight:
      return raylib.GamepadButton.MIDDLE_RIGHT;
    case GamepadButton.leftThumb:
      return raylib.GamepadButton.LEFT_THUMB;
    case GamepadButton.rightThumb:
      return raylib.GamepadButton.RIGHT_THUMB;
  }
}
