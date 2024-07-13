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
    'dart-raylib [core] example - 3d camera free',
  );

  // Define the camera to look into our 3d world
  final camera = Camera(
    position: Vector3(10, 10, 10), // Camera position
    target: Vector3.zero(), // Camera looking at point
    up: Vector3(0, 1, 0), // Camera up vector (rotation towards target)
    fovy: 45, // Camera field-of-view Y
  );

  final cubePosition = Vector3.zero();

  setCameraMode(camera, CameraMode.free); // Set a free camera mode

  setTargetFPS(60);

  while (!windowShouldClose()) {
    updateCamera(camera);

    if (isKeyDown(KeyboardKey.z)) camera.target = Vector3.zero();

    beginDrawing();

    clearBackground(Color.rayWhite);

    beginMode3D(camera);

    drawCube(cubePosition, 2, 2, 2, Color.red);
    drawCubeWires(cubePosition, 2, 2, 2, Color.maroon);

    drawGrid(10, 1);

    endMode3D();

    drawRectangle(10, 10, 320, 133, fade(Color.skyBlue, .5));
    drawRectangleLines(10, 10, 320, 133, Color.blue);

    drawText('Free camera default controls:', 20, 20, 10, Color.black);
    drawText('- Mouse Wheel to Zoom in-out', 40, 40, 10, Color.darkGray);
    drawText('- Mouse Wheel Pressed to Pan', 40, 60, 10, Color.darkGray);
    drawText(
      '- Alt + Mouse Wheel Pressed to Rotate',
      40,
      80,
      10,
      Color.darkGray,
    );
    drawText(
      '- Alt + Ctrl + Mouse Wheel Pressed for Smooth Zoom',
      40,
      100,
      10,
      Color.darkGray,
    );
    drawText('- Z to zoom to (0, 0, 0)', 40, 120, 10, Color.darkGray);

    endDrawing();
  }

  closeWindow();
}
