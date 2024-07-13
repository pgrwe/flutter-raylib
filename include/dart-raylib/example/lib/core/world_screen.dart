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
    'raylib [core] example - 3d camera free',
  );

  // Define the camera to look into our 3d world
  final camera = Camera3D(
    position: Vector3.all(10),
    up: Vector3(0, 1, 0),
    fovy: 45,
  );

  final cubePosition = Vector3.zero();
  var cubeScreenPosition = Vector2.zero();

  setCameraMode(camera, CameraMode.free); // Set a free camera mode

  setTargetFPS(60);

  while (!windowShouldClose()) {
    updateCamera(camera);

    // Calculate cube screen space position (with a little offset to be in top)
    cubeScreenPosition = getWorldToScreen(
      Vector3(cubePosition.x, cubePosition.y + 2.5, cubePosition.z),
      camera,
    );

    beginDrawing();

    clearBackground(Color.rayWhite);

    beginMode3D(camera);

    drawCube(cubePosition, 2, 2, 2, Color.red);
    drawCubeWires(cubePosition, 2, 2, 2, Color.maroon);

    drawGrid(10, 1);

    endMode3D();

    drawText(
      'Enemy: 100 / 100',
      (cubeScreenPosition.x - measureText('Enemy: 100/100', 20) / 2).toInt(),
      (cubeScreenPosition.y).toInt(),
      20,
      Color.black,
    );
    drawText(
      'Text is always on top of the cube',
      (screenWidth - measureText('Text is always on top of the cube', 20)) ~/ 2,
      25,
      20,
      Color.gray,
    );

    endDrawing();
  }

  closeWindow();
}
