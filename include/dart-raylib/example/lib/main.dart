import 'package:raylib/raylib.dart';

void main() {
  initLibrary(
    linux: './include/libraylib.so',
  );

  const screenWidth = 800;
  const screenHeight = 450;

  initWindow(
    screenWidth,
    screenHeight,
    'dart-raylib [core] example - basic window',
  );

  setTargetFPS(60);

  while (!windowShouldClose()) {
    beginDrawing();
    clearBackground(Color.white);
    drawText(
      'Congrats! You created your first window!',
      190,
      200,
      20,
      Color.lightGray,
    );
    endDrawing();
  }

  closeWindow();
}
