import 'dart:math';

import 'package:raylib/raylib.dart';

void main() {
  initLibrary(
    linux: './include/libraylib.so',
  );
  const screenWidth = 800;
  const screenHeight = 450;

  const virtualScreenWidth = 160;
  const virtualScreenHeight = 90;

  const virtualRatio = screenWidth / virtualScreenWidth;

  initWindow(
    screenWidth,
    screenHeight,
    'dart-raylib [core] example - smooth pixel-perfect camera',
  );

  final worldSpaceCamera = Camera2D();

  final screenSpaceCamera = Camera2D();

  final target = loadRenderTexture(
    virtualScreenWidth,
    virtualScreenHeight,
  ); // This is where we'll draw all our objects.

  final rec01 = Rectangle(70, 35, 20, 20);
  final rec02 = Rectangle(90, 55, 30, 10);
  final rec03 = Rectangle(80, 65, 15, 25);

  // The target's height is flipped (in the source Rectangle),
  // due to OpenGL reasons
  final sourceRec = Rectangle(
    0,
    0,
    target.texture.width.toDouble(),
    -target.texture.height.toDouble(),
  );
  final destRec = Rectangle(
    -virtualRatio,
    -virtualRatio,
    screenWidth + (virtualRatio * 2),
    screenHeight + (virtualRatio * 2),
  );

  final origin = Vector2.zero();

  var rotation = 0.0;

  var cameraX = 0.0;
  var cameraY = 0.0;

  setTargetFPS(60);

  while (!windowShouldClose()) {
    rotation +=
        60 * getFrameTime(); // Rotate the rectangles, 60 degrees per second

    // Make the camera move to demonstrate the effect
    cameraX = (sin(getTime()) * 50) - 10;
    cameraY = cos(getTime()) * 30;

    // Set the camera's target to the values computed above
    screenSpaceCamera.target = Vector2(cameraX, cameraY);

    // Round worldSpace coordinates, keep decimals into screenSpace coordinates
    worldSpaceCamera.target.x = screenSpaceCamera.target.x;
    screenSpaceCamera.target.x -= worldSpaceCamera.target.x;
    screenSpaceCamera.target.x *= virtualRatio;

    worldSpaceCamera.target.y = screenSpaceCamera.target.y;
    screenSpaceCamera.target.y -= worldSpaceCamera.target.y;
    screenSpaceCamera.target.y *= virtualRatio;

    beginTextureMode(target);
    clearBackground(Color.rayWhite);

    beginMode2D(worldSpaceCamera);
    drawRectanglePro(rec01, origin, rotation, Color.black);
    drawRectanglePro(rec02, origin, -rotation, Color.red);
    drawRectanglePro(rec03, origin, rotation + 45, Color.blue);
    endMode2D();
    endTextureMode();

    beginDrawing();
    clearBackground(Color.red);

    beginMode2D(screenSpaceCamera);
    drawTexturePro(target.texture, sourceRec, destRec, origin, 0, Color.white);
    endMode2D();

    drawText(
      'Screen resolution: ${screenWidth}x$screenHeight',
      10,
      10,
      20,
      Color.darkBlue,
    );
    drawText(
      'World resolution: ${virtualScreenWidth}x$virtualScreenHeight',
      10,
      40,
      20,
      Color.darkGreen,
    );
    drawFPS(getScreenWidth() - 95, 10);
    endDrawing();
  }

  unloadRenderTexture(target); // Unload render texture

  closeWindow(); // Close window and OpenGL context
}
