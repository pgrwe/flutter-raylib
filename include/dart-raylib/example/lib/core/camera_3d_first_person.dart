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
    'dart-raylib [core] example - 3d camera first person',
  );

  // Define the camera to look into our 3d world (position, target, up vector)
  final camera = Camera(
    position: Vector3(4, 2, 4),
    target: Vector3(0, 1.8, 0),
    up: Vector3(0, 1, 0),
    fovy: 60,
  );

  // Generates some random columns
  final heights = <double>[];
  final positions = <Vector3>[];
  final colors = <Color>[];

  /// Max amount of columns to generate.
  const maxColumns = 20;

  for (var i = 0; i < maxColumns; i++) {
    heights.add(_getRandomValue(1, 12));
    positions.add(
      Vector3(
        _getRandomValue(-15, 15),
        heights[i] / 2,
        _getRandomValue(-15, 15),
      ),
    );
    colors.add(
      Color(
        _getRandomValue(20, 255).toInt(),
        _getRandomValue(10, 55).toInt(),
        30,
        255,
      ),
    );
  }

  setCameraMode(
    camera,
    CameraMode.firstPerson,
  ); // Set a first person camera mode

  setTargetFPS(60);

  while (!windowShouldClose()) {
    updateCamera(camera);

    beginDrawing();

    clearBackground(Color.rayWhite);

    beginMode3D(camera);

    drawPlane(Vector3.zero(), Vector2(32, 32), Color.lightGray); // Draw ground
    drawCube(Vector3(-16, 2.5, 0), 1, 5, 32, Color.blue); // Draw a blue wall
    drawCube(Vector3(16, 2.5, 0), 1, 5, 32, Color.lime); // Draw a green wall
    drawCube(Vector3(0, 2.5, 16), 32, 5, 1, Color.gold); // Draw a yellow wall

    // Draw some cubes around
    for (var i = 0; i < maxColumns; i++) {
      drawCube(positions[i], 2, heights[i], 2, colors[i]);
      drawCubeWires(positions[i], 2, heights[i], 2, Color.maroon);
    }

    endMode3D();

    drawRectangle(10, 10, 220, 70, fade(Color.skyBlue, .5));
    drawRectangleLines(10, 10, 220, 70, Color.blue);

    drawText(
      'First person camera default controls:',
      20,
      20,
      10,
      Color.black,
    );
    drawText('- Move with keys: W, A, S, D', 40, 40, 10, Color.darkGray);
    drawText('- Mouse move to look around', 40, 60, 10, Color.darkGray);

    endDrawing();
  }

  closeWindow();
}
