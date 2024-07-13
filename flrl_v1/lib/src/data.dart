import 'package:raylib/raylib.dart';

class IsolatePayload {
  // Status of the raylib window
  bool rlContextIsOpen = false;
  bool? rlClearIsolates = true;

  IsolatePayload({required this.rlContextIsOpen, this.rlClearIsolates});
}

class RaylibCommand {
  // WARNING: THIS IS NOT A FLUTTER COLOR - This is a raylib color
  Color color;
  bool? closeWindow = false;

  RaylibCommand({required this.color, this.closeWindow});
}