import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/vector3.dart' as vector3;

/// Draw a line in 3D world space.
void drawLine3D(Vector3 startPos, Vector3 endPos, Color color) {
  return library.DrawLine3D(startPos.ref, endPos.ref, color.ref);
}

/// Draw a point in 3D space, actually a small line.
void drawPoint3D(Vector3 position, Color color) {
  return library.DrawPoint3D(position.ref, color.ref);
}

/// Draw a circle in 3D world space.
void drawCircle3D(
  Vector3 center,
  double radius,
  Vector3 rotationAxis,
  double rotationAngle,
  Color color,
) {
  return library.DrawCircle3D(
    center.ref,
    radius,
    rotationAxis.ref,
    rotationAngle,
    color.ref,
  );
}

/// Draw a color-filled triangle (vertex in counter-clockwise order!).
void drawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color) {
  return library.DrawTriangle3D(v1.ref, v2.ref, v3.ref, color.ref);
}

/// Draw a triangle strip defined by points.
void drawTriangleStrip3D(List<Vector3> points, int pointsCount, Color color) {
  return library.DrawTriangleStrip3D(
    vector3.toPointer(points),
    pointsCount,
    color.ref,
  );
}

/// Draw cube.
void drawCube(
  Vector3 position,
  double width,
  double height,
  double length,
  Color color,
) {
  return library.DrawCube(
    position.ref,
    width,
    height,
    length,
    color.ref,
  );
}

/// Draw cube (Vector version).
void drawCubeV(Vector3 position, Vector3 size, Color color) {
  return library.DrawCubeV(position.ref, size.ref, color.ref);
}

/// Draw cube wires.
void drawCubeWires(
  Vector3 position,
  double width,
  double height,
  double length,
  Color color,
) {
  return library.DrawCubeWires(
    position.ref,
    width,
    height,
    length,
    color.ref,
  );
}

/// Draw cube wires (Vector version).
void drawCubeWiresV(Vector3 position, Vector3 size, Color color) {
  return library.DrawCubeWiresV(position.ref, size.ref, color.ref);
}

/// Draw cube textured.
void drawCubeTexture(
  Texture2D texture,
  Vector3 position,
  double width,
  double height,
  double length,
  Color color,
) {
  return library.DrawCubeTexture(
    texture.ref,
    position.ref,
    width,
    height,
    length,
    color.ref,
  );
}

/// Draw cube with a region of a texture.
void drawCubeTextureRec(
  Texture2D texture,
  Rectangle source,
  Vector3 position,
  double width,
  double height,
  double length,
  Color color,
) {
  return library.DrawCubeTextureRec(
    texture.ref,
    source.ref,
    position.ref,
    width,
    height,
    length,
    color.ref,
  );
}

/// Draw sphere.
void drawSphere(Vector3 centerPos, double radius, Color color) {
  return library.DrawSphere(centerPos.ref, radius, color.ref);
}

/// Draw sphere with extended parameters.
void drawSphereEx(
  Vector3 centerPos,
  double radius,
  int rings,
  int slices,
  Color color,
) {
  return library.DrawSphereEx(
    centerPos.ref,
    radius,
    rings,
    slices,
    color.ref,
  );
}

/// Draw sphere wires.
void drawSphereWires(
  Vector3 centerPos,
  double radius,
  int rings,
  int slices,
  Color color,
) {
  return library.DrawSphereWires(
    centerPos.ref,
    radius,
    rings,
    slices,
    color.ref,
  );
}

/// Draw a cylinder/cone.
void drawCylinder(
  Vector3 position,
  double radiusTop,
  double radiusBottom,
  double height,
  int slices,
  Color color,
) {
  return library.DrawCylinder(
    position.ref,
    radiusTop,
    radiusBottom,
    height,
    slices,
    color.ref,
  );
}

/// Draw a cylinder with base at startPos and top at endPos.
void drawCylinderEx(
  Vector3 startPos,
  Vector3 endPos,
  double startRadius,
  double endRadius,
  int sides,
  Color color,
) {
  return library.DrawCylinderEx(
    startPos.ref,
    endPos.ref,
    startRadius,
    endRadius,
    sides,
    color.ref,
  );
}

/// Draw a cylinder/cone wires.
void drawCylinderWires(
  Vector3 position,
  double radiusTop,
  double radiusBottom,
  double height,
  int slices,
  Color color,
) {
  return library.DrawCylinderWires(
    position.ref,
    radiusTop,
    radiusBottom,
    height,
    slices,
    color.ref,
  );
}

/// Draw a cylinder wires with base at startPos and top at endPos.
void drawCylinderWiresEx(
  Vector3 startPos,
  Vector3 endPos,
  double startRadius,
  double endRadius,
  int sides,
  Color color,
) {
  return library.DrawCylinderWiresEx(
    startPos.ref,
    endPos.ref,
    startRadius,
    endRadius,
    sides,
    color.ref,
  );
}

/// Draw a plane XZ.
void drawPlane(Vector3 centerPos, Vector2 size, Color color) {
  return library.DrawPlane(centerPos.ref, size.ref, color.ref);
}

/// Draw a ray line.
void drawRay(Ray ray, Color color) {
  return library.DrawRay(ray.ref, color.ref);
}

/// Draw a grid (centered at (0, 0, 0)).
void drawGrid(int slices, double spacing) {
  return library.DrawGrid(slices, spacing);
}
