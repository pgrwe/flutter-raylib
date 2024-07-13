import 'dart:math';

import 'package:raylib/raylib.dart';

final _random = Random();
double _getRandomValue(double min, double max) {
  return min + _random.nextDouble() * max;
}

void main() {
  initLibrary(
    linux: './include/libraylib.so',
  );
  const screenWidth = 800;
  const screenHeight = 450;

  initWindow(
    screenWidth,
    screenHeight,
    'dart-raylib [core] example - 2d camera',
  );

  final player = Rectangle(400, 280, 40, 40);
  final buildings = <Rectangle>[];
  final buildColors = <Color>[];

  var spacing = 0.0;

  /// Amount of buildings to generate.
  const maxBuildings = 100;

  for (var i = 0; i < maxBuildings; i++) {
    final height = _getRandomValue(100, 800);
    buildings.add(
      Rectangle(
        -6000 + spacing,
        screenHeight - 130 - height,
        _getRandomValue(50, 200),
        height,
      ),
    );
    spacing += buildings[i].width;

    buildColors.add(
      Color(
        _getRandomValue(200, 240).toInt(),
        _getRandomValue(200, 240).toInt(),
        _getRandomValue(200, 250).toInt(),
        255,
      ),
    );
  }

  final camera = Camera2D(
    target: Vector2(player.x + 20, player.y + 20),
    offset: Vector2(screenWidth / 2, screenHeight / 2),
    zoom: 0,
  );

  setTargetFPS(60);

  while (!windowShouldClose()) {
    if (isKeyDown(KeyboardKey.right)) {
      player.x += 2;
    } else if (isKeyDown(KeyboardKey.left)) {
      player.x -= 2;
    }

    // Camera target follows player
    camera.target = Vector2(player.x + 20, player.y + 20);

    // Camera rotation controls
    if (isKeyDown(KeyboardKey.a)) {
      camera.rotation--;
    } else if (isKeyDown(KeyboardKey.s)) {
      camera.rotation++;
    }

    // Limit camera rotation to 80 degrees (-40 to 40)
    if (camera.rotation > 40) {
      camera.rotation = 40;
    } else if (camera.rotation < -40) {
      camera.rotation = -40;
    }

    // Camera zoom controls
    camera.zoom += getMouseWheelMove() * .05;

    if (camera.zoom > 3) {
      camera.zoom = 3;
    } else if (camera.zoom < .1) {
      camera.zoom = .1;
    }

    // Camera reset (zoom and rotation)
    if (isKeyPressed(KeyboardKey.r)) {
      camera
        ..zoom = 1
        ..rotation = 0;
    }

    beginDrawing();

    clearBackground(Color.rayWhite);

    beginMode2D(camera);

    drawRectangle(-6000, 320, 13000, 8000, Color.darkGray);

    for (var i = 0; i < maxBuildings; i++) {
      drawRectangleRec(buildings[i], buildColors[i]);
    }

    drawRectangleRec(player, Color.red);

    drawLine(
      camera.target.x.toInt(),
      -screenHeight * 10,
      camera.target.x.toInt(),
      screenHeight * 10,
      Color.green,
    );
    drawLine(
      -screenWidth * 10,
      camera.target.y.toInt(),
      screenWidth * 10,
      camera.target.y.toInt(),
      Color.green,
    );

    endMode2D();

    drawText('SCREEN AREA', 640, 10, 20, Color.red);

    drawRectangle(0, 0, screenWidth, 5, Color.red);
    drawRectangle(0, 5, 5, screenHeight - 10, Color.red);
    drawRectangle(screenWidth - 5, 5, 5, screenHeight - 10, Color.red);
    drawRectangle(0, screenHeight - 5, screenWidth, 5, Color.red);

    drawRectangle(10, 10, 250, 113, fade(Color.skyBlue, 0.5));
    drawRectangleLines(10, 10, 250, 113, Color.blue);

    drawText('Free 2d camera controls:', 20, 20, 10, Color.black);
    drawText('- Right/Left to move Offset', 40, 40, 10, Color.darkGray);
    drawText('- Mouse Wheel to Zoom in-out', 40, 60, 10, Color.darkGray);
    drawText('- A / S to Rotate', 40, 80, 10, Color.darkGray);
    drawText('- R to reset Zoom and Rotation', 40, 100, 10, Color.darkGray);

    endDrawing();
  }

  closeWindow();
}
