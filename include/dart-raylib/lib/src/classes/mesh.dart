import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// Mesh, vertex data and vao/vbo.
class Mesh extends NativeClass<raylib.Mesh> {
  /// Mesh, vertex data and vao/vbo.
  Mesh(int triangleCount)
      : pointer = malloc<raylib.Mesh>(sizeOf<raylib.Mesh>()) {
    ref = pointer.ref;
    ref
      ..vertexCount = triangleCount * 3
      ..triangleCount = triangleCount;

    pointer.ref.vertices = malloc<Float>(vertexCount * 3 * sizeOf<Float>());
    pointer.ref.texcoords = malloc<Float>(vertexCount * 2 * sizeOf<Float>());
    pointer.ref.texcoords2 = malloc<Float>(vertexCount * 2 * sizeOf<Float>());
    pointer.ref.normals = malloc<Float>(vertexCount * 3 * sizeOf<Float>());
    pointer.ref.tangents = malloc<Float>(vertexCount * 4 * sizeOf<Float>());
    pointer.ref.colors = malloc<Uint8>(vertexCount * 4 * sizeOf<Uint8>());
  }

  /// Mesh, vertex data and vao/vbo.
  Mesh.fromRef(raylib.Mesh ref)
      : pointer = malloc<raylib.Mesh>(sizeOf<raylib.Mesh>()),
        super.fromRef(ref) {
    pointer.ref.vertexCount = ref.vertexCount;
    pointer.ref.triangleCount = ref.triangleCount;

    pointer.ref.vertices = ref.vertices;
    pointer.ref.texcoords = ref.texcoords;
    pointer.ref.texcoords2 = ref.texcoords2;
    pointer.ref.normals = ref.normals;
    pointer.ref.tangents = ref.tangents;
    pointer.ref.colors = ref.colors;

    pointer.ref.indices = ref.indices;

    pointer.ref.animVertices = ref.animVertices;
    pointer.ref.animNormals = ref.animNormals;

    pointer.ref.boneIds = ref.boneIds;
    pointer.ref.boneWeights = ref.boneWeights;

    pointer.ref.vaoId = ref.vaoId;
    pointer.ref.vboId = ref.vboId;
  }

  /// Native pointer, used internally.
  final Pointer<raylib.Mesh> pointer;

  /// Number of vertices stored in arrays.
  int get vertexCount => ref.vertexCount;
  set vertexCount(int vertexCount) => ref.vertexCount = vertexCount;

  /// Number of triangles stored (indexed or not).
  int get triangleCount => ref.triangleCount;
  set triangleCount(int triangleCount) => ref.triangleCount = triangleCount;

  /// Vertex position. (XYZ - 3 components per vertex).
  ///
  /// Shader-location = 0.
  PointerList<Float> get vertices => PointerList<Float>(ref.vertices);

  /// Vertex texture coordinates (UV - 2 components per vertex).
  ///
  /// Shader-location = 1.
  PointerList<Float> get texcoords => PointerList<Float>(ref.texcoords);

  /// Vertex second texture coordinates (useful for lightmaps).
  ///
  /// Shader-location = 5.
  PointerList<Float> get texcoords2 => PointerList<Float>(ref.texcoords2);

  /// Vertex normals (XYZ - 3 components per vertex).
  ///
  /// Shader-location = 2.
  PointerList<Float> get normals => PointerList<Float>(ref.normals);

  /// Vertex tangents (XYZW - 4 components per vertex).
  ///
  /// Shader-location = 4.
  PointerList<Float> get tangents => PointerList<Float>(ref.tangents);

  /// Vertex colors (RGBA - 4 components per vertex).
  ///
  /// Shader-location = 3.
  PointerList<Uint8> get colors => PointerList<Uint8>(ref.colors);

  /// Vertex indices (in case vertex data comes indexed).
  PointerList<Uint16> get indices => PointerList<Uint16>(ref.indices);

  /// Animated vertex positions (after bones transformations).
  PointerList<Float> get animVertices => PointerList<Float>(ref.animVertices);

  /// Animated normals (after bones transformations).
  PointerList<Float> get animNormals => PointerList<Float>(ref.animNormals);

  /// Vertex bone ids, max 255 bone ids, up to 4 bones influence by
  /// vertex (skinning).
  PointerList<Uint8> get boneIds => PointerList<Uint8>(ref.boneIds);

  /// Vertex bone weight, up to 4 bones influence by vertex (skinning).
  PointerList<Float> get boneWeights => PointerList<Float>(ref.boneWeights);

  /// OpenGL Vertex Array Object id.
  int get vaoId => ref.vaoId;

  /// OpenGL Vertex Buffer Objects id (default vertex data).
  PointerList<Uint32> get vboId => PointerList<Uint32>(ref.vboId);
}

/// Adds extension for lists of GlyphInfo.
extension MeshList on PointerList<raylib.Mesh> {
  /// Set the values of [value] to the given native [ref].
  void _setRef(raylib.Mesh ref, Mesh value) {
    ref
      ..vertexCount = value.ref.vertexCount
      ..triangleCount = value.ref.triangleCount
      ..vertices = value.ref.vertices
      ..texcoords = value.ref.texcoords
      ..texcoords = value.ref.texcoords2
      ..normals = value.ref.normals
      ..tangents = value.ref.tangents
      ..colors = value.ref.colors
      ..indices = value.ref.indices
      ..animVertices = value.ref.animVertices
      ..animNormals = value.ref.animNormals
      ..boneIds = value.ref.boneIds
      ..boneWeights = value.ref.boneWeights
      ..vaoId = value.ref.vaoId
      ..vboId = value.ref.vboId;
  }

  /// The object at the given [index] in the list.
  Mesh operator [](int index) {
    return Mesh.fromRef(pointer.elementAt(index).ref);
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, Mesh value) {
    _setRef(pointer.elementAt(index).ref, value);
  }
}
