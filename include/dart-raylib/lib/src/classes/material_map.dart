import 'dart:ffi';

import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// MaterialMap.
class MaterialMap extends NativeClass<raylib.MaterialMap> {
  /// MaterialMap.
  MaterialMap.fromRef(raylib.MaterialMap ref) : super.fromRef(ref);

  /// Material map texture.
  Texture2D get texture => Texture2D.fromRef(ref.texture);
  set texture(Texture2D texture) => ref.texture = texture.ref;

  /// Material map color.
  Color get color => Color.fromRef(ref.color);
  set color(Color color) => ref.color = color.ref;

  /// Material map value.
  double get value => ref.value;
}

/// Adds extension for lists of MaterialMap.
extension MaterialMapList on PointerList<raylib.MaterialMap> {
  /// Set the values of [value] to the given native [ref].
  void _setRef(raylib.MaterialMap ref, MaterialMap value) {
    ref
      ..color = value.ref.color
      ..texture = value.ref.texture
      ..value = value.ref.value;
  }

  /// The object at the given [index] in the list.
  MaterialMap operator [](int index) {
    return MaterialMap.fromRef(pointer.elementAt(index).ref);
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, MaterialMap value) {
    _setRef(pointer.elementAt(index).ref, value);
  }
}
