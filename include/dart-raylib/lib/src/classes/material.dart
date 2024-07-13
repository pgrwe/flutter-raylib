import 'dart:ffi';

import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_array.dart';
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// Material, includes shader and maps.
class Material extends NativeClass<raylib.Material> {
  /// Material, includes shader and maps.
  Material.fromRef(raylib.Material ref) : super.fromRef(ref);

  /// Material shader.
  Shader get shader => Shader.fromRef(ref.shader);

  /// Material maps array (MAX_MATERIAL_MAPS).
  PointerList<raylib.MaterialMap> get maps => PointerList(ref.maps);

  /// Material generic parameters (if required).
  List<double> get params => FloatArray(ref.params, 4);
}

/// Adds extension for lists of Material.
extension MaterialList on PointerList<raylib.Material> {
  /// Set the values of [value] to the given native [ref].
  void _setRef(raylib.Material ref, Material value) {
    ref
      ..maps = value.ref.maps
      ..params = value.ref.params
      ..shader = value.ref.shader;
  }

  /// The object at the given [index] in the list.
  Material operator [](int index) {
    return Material.fromRef(pointer.elementAt(index).ref);
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, Material value) {
    _setRef(pointer.elementAt(index).ref, value);
  }
}
