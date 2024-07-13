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
    'raylib [core] example - 3d camera mode',
  );

  // Define the camera to look into our 3d world
  final camera = Camera(
    position: Vector3(0, 10, 10), // Camera position
    target: Vector3.zero(), // Camera looking at point
    up: Vector3(0, 1, 0), // Camera up vector (rotation towards target)
    fovy: 45, // Camera field-of-view Y
  );

  final cubePosition = Vector3.zero();

  setTargetFPS(60);

  while (!windowShouldClose()) {
    beginDrawing();

    clearBackground(Color.rayWhite);

    beginMode3D(camera);

    drawCube(cubePosition, 2, 2, 2, Color.red);
    drawCubeWires(cubePosition, 2, 2, 2, Color.maroon);

    drawGrid(10, 1);

    endMode3D();

    drawText('Welcome to the third dimension!', 10, 40, 20, Color.darkGray);

    drawFPS(10, 10);

    endDrawing();
  }

  closeWindow();
}
