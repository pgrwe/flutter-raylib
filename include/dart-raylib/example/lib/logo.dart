import 'package:raylib/raylib.dart';

void main() {
  initLibrary(
    linux: './include/libraylib.so',
  );

  const screenWidth = 256;
  const screenHeight = 256;

  initWindow(
    screenWidth,
    screenHeight,
    'dart-raylib - logo',
  );

  setTargetFPS(60);

  const size = 49;

  while (!windowShouldClose()) {
    beginDrawing();
    clearBackground(Color.white);
    drawRectangle(0, 0, screenWidth, screenHeight, getColor(0x01579BFF));
    drawRectangle(16, 16, screenWidth - 32, screenHeight - 32, Color.rayWhite);
    drawText(
      'dart',
      224 - 16 - measureText('dart', size) - measureText('lib', size),
      226 - 33 - size,
      49,
      getColor(0x29B6F6FF),
    );
    drawText(
      'raylib',
      224 - 8 - measureText('raylib', size),
      226 - 4 - size,
      size,
      Color.darkGray,
    );
    endDrawing();
  }

  closeWindow();
}
