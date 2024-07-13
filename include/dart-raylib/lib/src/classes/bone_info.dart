import 'dart:convert';
import 'dart:ffi';

import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_array.dart';
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// Bone, skeletal animation bone.
class BoneInfo extends NativeClass<raylib.BoneInfo> {
  /// Bone, skeletal animation bone.
  BoneInfo.fromRef(raylib.BoneInfo ref) : super.fromRef(ref);

  Int8Array get _name => Int8Array(ref.name, 32);

  /// Bone name.
  String get name => utf8.decode(_name);

  /// Bone parent.
  int get parent => ref.parent;
}

/// Adds extension for lists of BoneInfo.
extension BoneInfoList on PointerList<raylib.BoneInfo> {
  /// Set the values of [value] to the given native [ref].
  void _setRef(raylib.BoneInfo ref, BoneInfo value) {
    ref
      ..name = value.ref.name
      ..parent = value.ref.parent;
  }

  /// The object at the given [index] in the list.
  BoneInfo operator [](int index) {
    return BoneInfo.fromRef(pointer.elementAt(index).ref);
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, BoneInfo value) {
    _setRef(pointer.elementAt(index).ref, value);
  }
}
