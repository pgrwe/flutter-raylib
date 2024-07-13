import 'package:raylib/src/library.dart';

/// Set target FPS (maximum).
void setTargetFPS(int fps) {
  return library.SetTargetFPS(fps);
}

/// Get current FPS.
int getFPS() {
  return library.GetFPS();
}

/// Get time in seconds for last frame drawn (delta time).
double getFrameTime() {
  return library.GetFrameTime();
}

/// Get elapsed time in seconds since initWindow().
double getTime() {
  return library.GetTime();
}
