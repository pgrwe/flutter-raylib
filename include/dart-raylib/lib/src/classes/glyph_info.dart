import 'dart:ffi';

import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// GlyphInfo, font characters glyphs info.
class GlyphInfo extends NativeClass<raylib.GlyphInfo> {
  /// GlyphInfo, font characters glyphs info.
  GlyphInfo.fromRef(raylib.GlyphInfo ref) : super.fromRef(ref);

  /// GlyphInfo, font characters glyphs info.
  GlyphInfo.fromPointer(Pointer<raylib.GlyphInfo> pointer)
      : super.fromRef(pointer.ref);

  /// Character value (Unicode),
  int get value => ref.value;

  /// Character offset X when drawing,
  int get offsetX => ref.offsetX;

  /// Character offset Y when drawing,
  int get offsetY => ref.offsetY;

  /// Character advance position X,
  int get advanceX => ref.advanceX;

  /// Character image data
  Image get image => Image.fromRef(ref.image);
}

/// Adds extension for lists of GlyphInfo.
extension GlyphInfoList on PointerList<raylib.GlyphInfo> {
  /// Set the values of [value] to the given native [ref].
  void _setRef(raylib.GlyphInfo ref, GlyphInfo value) {
    ref
      ..value = value.ref.value
      ..offsetX = value.ref.offsetX
      ..offsetY = value.ref.offsetY
      ..advanceX = value.ref.advanceX
      ..image = value.ref.image;
  }

  /// The object at the given [index] in the list.
  GlyphInfo operator [](int index) {
    return GlyphInfo.fromRef(pointer.elementAt(index).ref);
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, GlyphInfo value) {
    _setRef(pointer.elementAt(index).ref, value);
  }
}
