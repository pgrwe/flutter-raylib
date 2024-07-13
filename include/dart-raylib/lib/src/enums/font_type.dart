import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Font type, defines generation method.
enum FontType {
  /// Default font generation, anti-aliased.
  defaultType,

  /// Bitmap font generation, no anti-aliasing.
  bitmap,

  /// SDF font generation, requires external shader.
  sdf,
}

/// Convert given enum to native value.
int fontTypeToNative(FontType type) {
  switch (type) {
    case FontType.defaultType:
      return raylib.FontType.DEFAULT;
    case FontType.bitmap:
      return raylib.FontType.BITMAP;
    case FontType.sdf:
      return raylib.FontType.SDF;
  }
}
