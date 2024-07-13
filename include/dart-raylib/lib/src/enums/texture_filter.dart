import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Texture parameters: filter mode.
///
/// NOTE 1: Filtering considers mipmaps if available in the texture.
/// NOTE 2: Filter is accordingly set for minification and magnification.
enum TextureFilter {
  /// No filter, just pixel aproximation.
  point,

  /// Linear filtering.
  bilinear,

  /// Trilinear filtering (linear with mipmaps).
  trilinear,

  /// Anisotropic filtering 4x.
  anisotropic4x,

  /// Anisotropic filtering 8x.
  anisotropic8x,

  /// Anisotropic filtering 16x.
  anisotropic16x,
}

/// Convert given enum to native value.
int textureFilterToNative(TextureFilter filter) {
  switch (filter) {
    case TextureFilter.point:
      return raylib.TextureFilter.POINT;
    case TextureFilter.bilinear:
      return raylib.TextureFilter.BILINEAR;
    case TextureFilter.trilinear:
      return raylib.TextureFilter.TRILINEAR;
    case TextureFilter.anisotropic4x:
      return raylib.TextureFilter.ANISOTROPIC_4X;
    case TextureFilter.anisotropic8x:
      return raylib.TextureFilter.ANISOTROPIC_8X;
    case TextureFilter.anisotropic16x:
      return raylib.TextureFilter.ANISOTROPIC_16X;
  }
}
