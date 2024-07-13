import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/matrix.dart' as matrix;

/// Draw a model (with texture if set).
void drawModel(Model model, Vector3 position, double scale, Color tint) {
  return library.DrawModel(model.ref, position.ref, scale, tint.ref);
}

/// Draw a model with extended parameters.
void drawModelEx(
  Model model,
  Vector3 position,
  Vector3 rotationAxis,
  double rotationAngle,
  Vector3 scale,
  Color tint,
) {
  return library.DrawModelEx(
    model.ref,
    position.ref,
    rotationAxis.ref,
    rotationAngle,
    scale.ref,
    tint.ref,
  );
}

/// Draw a model wires (with texture if set).
void drawModelWires(Model model, Vector3 position, double scale, Color tint) {
  return library.DrawModelWires(model.ref, position.ref, scale, tint.ref);
}

/// Draw a model wires (with texture if set) with extended parameters.
void drawModelWiresEx(
  Model model,
  Vector3 position,
  Vector3 rotationAxis,
  double rotationAngle,
  Vector3 scale,
  Color tint,
) {
  return library.DrawModelWiresEx(
    model.ref,
    position.ref,
    rotationAxis.ref,
    rotationAngle,
    scale.ref,
    tint.ref,
  );
}

/// Draw bounding box (wires).
void drawBoundingBox(BoundingBox box, Color color) {
  return library.DrawBoundingBox(box.ref, color.ref);
}

/// Draw a billboard texture.
void drawBillboard(
  Camera camera,
  Texture2D texture,
  Vector3 position,
  double size,
  Color tint,
) {
  return library.DrawBillboard(
    camera.ref,
    texture.ref,
    position.ref,
    size,
    tint.ref,
  );
}

/// Draw a billboard texture defined by source.
void drawBillboardRec(
  Camera camera,
  Texture2D texture,
  Rectangle source,
  Vector3 position,
  Vector2 size,
  Color tint,
) {
  return library.DrawBillboardRec(
    camera.ref,
    texture.ref,
    source.ref,
    position.ref,
    size.ref,
    tint.ref,
  );
}

/// Draw a billboard texture defined by source and rotation.
void drawBillboardPro(
  Camera camera,
  Texture2D texture,
  Rectangle source,
  Vector3 position,
  Vector3 up,
  Vector2 size,
  Vector2 origin,
  double rotation,
  Color tint,
) {
  return library.DrawBillboardPro(
    camera.ref,
    texture.ref,
    source.ref,
    position.ref,
    up.ref,
    size.ref,
    origin.ref,
    rotation,
    tint.ref,
  );
}

/// Draw a 3d mesh with material and transform.
void drawMesh(Mesh mesh, Material material, Matrix transform) {
  return library.DrawMesh(mesh.ref, material.ref, transform.ref);
}

/// Draw multiple mesh instances with material and different transforms.
void drawMeshInstanced(
  Mesh mesh,
  Material material,
  List<Matrix> transforms,
  int instances,
) {
  return library.DrawMeshInstanced(
    mesh.ref,
    material.ref,
    matrix.toPointer(transforms),
    instances,
  );
}
