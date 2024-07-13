import 'dart:ffi';

import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// ModelAnimation.
class ModelAnimation extends NativeClass<raylib.ModelAnimation> {
  /// ModelAnimation
  ModelAnimation.fromRef(raylib.ModelAnimation ref) : super.fromRef(ref);

  /// Number of bones.
  external int boneCount;

  /// Number of animation frames.
  external int frameCount;

  /// Bones information (skeleton).
  PointerList<raylib.BoneInfo> get bones => PointerList(ref.bones);

  /// Poses array by frame.
  PointerList<Pointer<raylib.Transform>> get framePoses {
    return PointerList(ref.framePoses);
  }
}

/// Adds extension for a list of list of Transforms.
extension ListOfTransformPointers on PointerList<Pointer<raylib.Transform>> {
  /// The object at the given [index] in the list.
  PointerList<raylib.Transform> operator [](int index) {
    return PointerList(pointer.elementAt(index).value);
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, Pointer<raylib.Transform> value) {
    pointer.elementAt(index).value = value;
  }
}
