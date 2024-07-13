import 'dart:ffi';

import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/string.dart' as string;

/// Upload mesh vertex data in GPU and provide VAO/VBO ids
void uploadMesh(
  Mesh mesh, {
  bool isDynamic = false,
}) {
  return library.UploadMesh(mesh.pointer, isDynamic);
}

/// Update mesh vertex data in GPU for a specific buffer index.
void updateMeshBuffer(
  Mesh mesh,
  int index,
  Pointer<Void> data, // TODO(wolfen): what kind of data?
  int dataSize,
  int offset,
) {
  return library.UpdateMeshBuffer(mesh.ref, index, data, dataSize, offset);
}

/// Unload mesh data from CPU and GPU.
void unloadMesh(Mesh mesh) {
  return library.UnloadMesh(mesh.ref);
}

/// Export mesh data to file, returns true on success.
bool exportMesh(Mesh mesh, String fileName) {
  return library.ExportMesh(mesh.ref, string.toNative(fileName));
}

/// Compute mesh bounding box limits.
BoundingBox getMeshBoundingBox(Mesh mesh) {
  return BoundingBox.fromRef(library.GetMeshBoundingBox(mesh.ref));
}

/// Compute mesh tangents.
void genMeshTangents(Mesh mesh) {
  return library.GenMeshTangents(mesh.pointer);
}

/// Compute mesh binormals.
void genMeshBinormals(Mesh mesh) {
  return library.GenMeshBinormals(mesh.pointer);
}
