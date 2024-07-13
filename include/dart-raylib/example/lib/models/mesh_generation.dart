import 'package:raylib/raylib.dart';

/// generate a simple triangle mesh from code
Mesh makeMesh() {
  final mesh = Mesh(1);

  // vertex at the origin
  mesh.vertices[0] = 0;
  mesh.vertices[1] = 0;
  mesh.vertices[2] = 0;
  mesh.normals[0] = 0;
  mesh.normals[1] = 1;
  mesh.normals[2] = 0;
  mesh.texcoords[0] = 0;
  mesh.texcoords[1] = 0;

  // vertex at 1,0,2
  mesh.vertices[3] = 1;
  mesh.vertices[4] = 0;
  mesh.vertices[5] = 2;
  mesh.normals[3] = 0;
  mesh.normals[4] = 1;
  mesh.normals[5] = 0;
  mesh.texcoords[2] = 0.5;
  mesh.texcoords[3] = 1.0;

  // vertex at 2,0,0
  mesh.vertices[6] = 2;
  mesh.vertices[7] = 0;
  mesh.vertices[8] = 0;
  mesh.normals[6] = 0;
  mesh.normals[7] = 1;
  mesh.normals[8] = 0;
  mesh.texcoords[4] = 1;
  mesh.texcoords[5] = 0;

  uploadMesh(mesh);

  return mesh;
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
    'dart-raylib [models] example - mesh generation',
  );

  // We generate a checked image for texturing
  final checked = genImageChecked(2, 2, 1, 1, Color.red, Color.green);
  final texture = loadTextureFromImage(checked);
  unloadImage(checked);

  final models = <Model>[
    loadModelFromMesh(genMeshPlane(2, 2, 5, 5)),
    loadModelFromMesh(genMeshCube(2, 1, 2)),
    loadModelFromMesh(genMeshSphere(2, 32, 32)),
    loadModelFromMesh(genMeshHemiSphere(2, 16, 16)),
    loadModelFromMesh(genMeshCylinder(1, 2, 16)),
    loadModelFromMesh(genMeshTorus(0.25, 4, 16, 32)),
    loadModelFromMesh(genMeshKnot(1, 2, 16, 128)),
    loadModelFromMesh(genMeshPoly(5, 2)),
    loadModelFromMesh(makeMesh()),
  ];

  // Set checked texture as default diffuse component for all models material
  for (final model in models) {
    model.materials[0].maps[materialMapDiffuse].texture = texture;
  }

  // Define the camera to look into our 3d world
  final camera = Camera3D(
    position: Vector3.all(5),
    target: Vector3.zero(),
    up: Vector3(0, 1, 0),
    fovy: 45,
  );

  // Model drawing position
  final position = Vector3.zero();

  var currentModel = 0;

  setCameraMode(camera, CameraMode.orbital);

  setTargetFPS(60);

  while (!windowShouldClose()) {
    updateCamera(camera);

    if (isMouseButtonPressed(MouseButton.left)) {
      // Cycle between the textures
      currentModel = (currentModel + 1) % models.length;
    }

    if (isKeyPressed(KeyboardKey.right)) {
      currentModel++;
      if (currentModel >= models.length) currentModel = 0;
    } else if (isKeyPressed(KeyboardKey.left)) {
      currentModel--;
      if (currentModel < 0) currentModel = models.length - 1;
    }

    beginDrawing();

    clearBackground(Color.rayWhite);

    beginMode3D(camera);

    drawModel(models[currentModel], position, 1, Color.white);
    drawGrid(10, 1);

    endMode3D();

    drawRectangle(30, 400, 310, 30, fade(Color.skyBlue, .5));
    drawRectangleLines(30, 400, 310, 30, fade(Color.darkBlue, .5));
    drawText(
      'MOUSE LEFT BUTTON to CYCLE PROCEDURAL MODELS',
      40,
      410,
      10,
      Color.blue,
    );

    switch (currentModel) {
      case 0:
        drawText('PLANE', 680, 10, 20, Color.darkBlue);
        break;
      case 1:
        drawText('CUBE', 680, 10, 20, Color.darkBlue);
        break;
      case 2:
        drawText('SPHERE', 680, 10, 20, Color.darkBlue);
        break;
      case 3:
        drawText('HEMISPHERE', 640, 10, 20, Color.darkBlue);
        break;
      case 4:
        drawText('CYLINDER', 680, 10, 20, Color.darkBlue);
        break;
      case 5:
        drawText('TORUS', 680, 10, 20, Color.darkBlue);
        break;
      case 6:
        drawText('KNOT', 680, 10, 20, Color.darkBlue);
        break;
      case 7:
        drawText('POLY', 680, 10, 20, Color.darkBlue);
        break;
      case 8:
        drawText('Parametric(custom)', 580, 10, 20, Color.darkBlue);
        break;
      default:
        break;
    }

    endDrawing();
  }

  unloadTexture(texture); // Unload texture

  // Unload models data (GPU VRAM)
  for (final model in models) {
    unloadModel(model);
  }

  closeWindow();
}
