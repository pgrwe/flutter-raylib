import 'package:raylib/raylib.dart';
import 'package:raylib/src/enums/gamepad_axis.dart';
import 'package:raylib/src/enums/gamepad_button.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/string.dart' as string;

/// Check if a gamepad is available.
bool isGamepadAvailable(int gamepad) {
  return library.IsGamepadAvailable(gamepad);
}

/// Get gamepad internal name id.
String getGamepadName(int gamepad) {
  return string.toDart(library.GetGamepadName(gamepad));
}

/// Check if a gamepad button has been pressed once.
bool isGamepadButtonPressed(int gamepad, GamepadButton button) {
  return library.IsGamepadButtonPressed(gamepad, gamepadButtonToNative(button));
}

/// Check if a gamepad button is being pressed.
bool isGamepadButtonDown(int gamepad, GamepadButton button) {
  return library.IsGamepadButtonDown(gamepad, gamepadButtonToNative(button));
}

/// Check if a gamepad button has been released once.
bool isGamepadButtonReleased(int gamepad, GamepadButton button) {
  return library.IsGamepadButtonReleased(
    gamepad,
    gamepadButtonToNative(button),
  );
}

/// Check if a gamepad button is NOT being pressed.
bool isGamepadButtonUp(int gamepad, GamepadButton button) {
  return library.IsGamepadButtonUp(gamepad, gamepadButtonToNative(button));
}

/// Get the last gamepad button pressed.
GamepadButton getGamepadButtonPressed() {
  final button = library.GetGamepadButtonPressed();

  switch (button) {
    case raylib.GamepadButton.UNKNOWN:
      return GamepadButton.unknown;
    case raylib.GamepadButton.LEFT_FACE_UP:
      return GamepadButton.leftFaceUp;
    case raylib.GamepadButton.LEFT_FACE_RIGHT:
      return GamepadButton.leftFaceRight;
    case raylib.GamepadButton.LEFT_FACE_DOWN:
      return GamepadButton.leftFaceDown;
    case raylib.GamepadButton.LEFT_FACE_LEFT:
      return GamepadButton.leftFaceLeft;
    case raylib.GamepadButton.RIGHT_FACE_UP:
      return GamepadButton.rightFaceUp;
    case raylib.GamepadButton.RIGHT_FACE_RIGHT:
      return GamepadButton.rightFaceright;
    case raylib.GamepadButton.RIGHT_FACE_DOWN:
      return GamepadButton.rightFaceDown;
    case raylib.GamepadButton.RIGHT_FACE_LEFT:
      return GamepadButton.rightFaceLeft;
    case raylib.GamepadButton.LEFT_TRIGGER_1:
      return GamepadButton.leftTrigger1;
    case raylib.GamepadButton.LEFT_TRIGGER_2:
      return GamepadButton.leftTrigger2;
    case raylib.GamepadButton.RIGHT_TRIGGER_1:
      return GamepadButton.rightTrigger1;
    case raylib.GamepadButton.RIGHT_TRIGGER_2:
      return GamepadButton.rightTrigger2;
    case raylib.GamepadButton.MIDDLE_LEFT:
      return GamepadButton.middleLeft;
    case raylib.GamepadButton.MIDDLE:
      return GamepadButton.middle;
    case raylib.GamepadButton.MIDDLE_RIGHT:
      return GamepadButton.middleRight;
    case raylib.GamepadButton.LEFT_THUMB:
      return GamepadButton.leftThumb;
    case raylib.GamepadButton.RIGHT_THUMB:
      return GamepadButton.rightThumb;
    default:
      throw Exception('Unknown GamepadButton: $button');
  }
}

/// Get gamepad axis count for a gamepad.
int getGamepadAxisCount(int gamepad) {
  return library.GetGamepadAxisCount(gamepad);
}

/// Get axis movement value for a gamepad axis.
double getGamepadAxisMovement(int gamepad, GamepadAxis axis) {
  return library.GetGamepadAxisMovement(gamepad, gamepadAxisToNative(axis));
}

/// Set internal gamepad mappings (SDL_GameControllerDB).
int setGamepadMappings(String mappings) {
  return library.SetGamepadMappings(string.toNative(mappings));
}
