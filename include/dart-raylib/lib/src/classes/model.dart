import 'dart:ffi';

import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// Model, meshes, materials and animation data.
class Model extends NativeClass<raylib.Model> {
  /// Model, meshes, materials and animation data.
  Model.fromRef(raylib.Model ref) : super.fromRef(ref);

  /// Local transform matrix.
  Matrix get transform => Matrix.fromRef(ref.transform);

  /// Number of meshes.
  int get meshCount => ref.meshCount;

  /// Number of materials.
  int get materialCount => ref.materialCount;

  /// Meshes array.
  PointerList<raylib.Mesh> get meshes => PointerList(ref.meshes);

  /// Materials array.
  PointerList<raylib.Material> get materials => PointerList(ref.materials);

  /// Mesh material number.
  PointerList<Int32> get meshMaterial => PointerList(ref.meshMaterial);

  /// Number of bones.
  int get boneCount => ref.boneCount;

  /// Bones information (skeleton).
  PointerList<raylib.BoneInfo> get bones => PointerList(ref.bones);

  /// Bones base transformation (pose).
  PointerList<raylib.Transform> get bindPose => PointerList(ref.bindPose);
}
