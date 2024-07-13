import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';

/// Generate polygonal mesh.
Mesh genMeshPoly(int sides, double radius) {
  return Mesh.fromRef(library.GenMeshPoly(sides, radius));
}

/// Generate plane mesh (with subdivisions).
Mesh genMeshPlane(double width, double length, int resX, int resZ) {
  return Mesh.fromRef(library.GenMeshPlane(width, length, resX, resZ));
}

/// Generate cuboid mesh.
Mesh genMeshCube(double width, double height, double length) {
  return Mesh.fromRef(library.GenMeshCube(width, length, length));
}

/// Generate sphere mesh (standard sphere).
Mesh genMeshSphere(double radius, int rings, int slices) {
  return Mesh.fromRef(library.GenMeshSphere(radius, rings, slices));
}

/// Generate half-sphere mesh (no bottom cap).
Mesh genMeshHemiSphere(double radius, int rings, int slices) {
  return Mesh.fromRef(library.GenMeshHemiSphere(radius, rings, slices));
}

/// Generate cylinder mesh.
Mesh genMeshCylinder(double radius, double height, int slices) {
  return Mesh.fromRef(library.GenMeshCylinder(radius, height, slices));
}

/// Generate cone/pyramid mesh.
Mesh genMeshCone(double radius, double height, int slices) {
  return Mesh.fromRef(library.GenMeshCone(radius, height, slices));
}

/// Generate torus mesh.
Mesh genMeshTorus(double radius, double size, int radSeg, int sides) {
  return Mesh.fromRef(library.GenMeshTorus(radius, size, radSeg, sides));
}

/// Generate trefoil knot mesh.
Mesh genMeshKnot(double radius, double size, int radSeg, int sides) {
  return Mesh.fromRef(library.GenMeshKnot(radius, size, radSeg, sides));
}

/// Generate heightmap mesh from image data.
Mesh genMeshHeightmap(Image heightmap, Vector3 size) {
  return Mesh.fromRef(library.GenMeshHeightmap(heightmap.ref, size.ref));
}

/// Generate cubes-based map mesh from image data.
Mesh genMeshCubicmap(Image cubicmap, Vector3 cubeSize) {
  return Mesh.fromRef(library.GenMeshCubicmap(cubicmap.ref, cubeSize.ref));
}
