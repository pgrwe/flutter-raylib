import 'dart:ffi';

import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// Bone, skeletal animation bone.
class Transform extends NativeClass<raylib.Transform> {
  /// Bone, skeletal animation bone.
  Transform.fromRef(raylib.Transform ref) : super.fromRef(ref);

  /// Translation.
  Vector3 get translation => Vector3.fromRef(ref.translation);

  /// Rotation.
  Quaternion get rotation => Quaternion.fromRef(ref.rotation);

  /// Scale.
  Vector3 get scale => Vector3.fromRef(ref.scale);
}

/// Adds extension for lists of Transform.
extension TransformList on PointerList<raylib.Transform> {
  /// Set the values of [value] to the given native [ref].
  void _setRef(raylib.Transform ref, Transform value) {
    ref
      ..translation = value.ref.translation
      ..rotation = value.ref.rotation
      ..scale = value.ref.scale;
  }

  /// The object at the given [index] in the list.
  Transform operator [](int index) {
    return Transform.fromRef(pointer.elementAt(index).ref);
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, Transform value) {
    _setRef(pointer.elementAt(index).ref, value);
  }
}
