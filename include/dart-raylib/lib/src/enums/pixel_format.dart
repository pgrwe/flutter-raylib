import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Pixel formats.
///
/// NOTE: Support depends on OpenGL version and platform.
enum PixelFormat {
  /// 8 bit per pixel (no alpha).
  uncompressedGrayscale,

  /// 8*2 bpp (2 channels).
  uncompressedGrayAlpha,

  /// 16 bpp.
  uncompressedR5G6B5,

  /// 24 bpp.
  uncompressedR8G8B8,

  /// 16 bpp (1 bit alpha).
  uncompressedR5G5B5A1,

  /// 16 bpp (4 bit alpha).
  uncompressedR4G4B4A4,

  /// 32 bpp.
  uncompressedR8G8B8A8,

  /// 32 bpp (1 channel - float).
  uncompressedR32,

  /// 32*3 bpp (3 channels - float).
  uncompressedR32G32B32,

  /// 32*4 bpp (4 channels - float).
  uncompressedR32G32B32A32,

  /// 4 bpp (no alpha).
  compressedDXT1rgb,

  /// 4 bpp (1 bit alpha).
  compressedDXT1rgba,

  /// 8 bpp.
  compressedDXT3rgba,

  /// 8 bpp.
  compressedDXT5rgba,

  /// 4 bpp.
  compressedETC1rgb,

  /// 4 bpp.
  compressedETC2rgb,

  /// 8 bpp.
  compressedETC2eacRGBA,

  /// 4 bpp.
  compressedPVRTrgb,

  /// 4 bpp.
  compressedPVRTrgba,

  /// 8 bpp.
  compressedASTC4x4rgba,

  /// 2 bpp.
  compressedASTC8x8rgba,
}

/// Convert given enum to native value.
int pixelFormatToNative(PixelFormat format) {
  switch (format) {
    case PixelFormat.uncompressedGrayscale:
      return raylib.PixelFormat.UNCOMPRESSED_GRAYSCALE;
    case PixelFormat.uncompressedGrayAlpha:
      return raylib.PixelFormat.UNCOMPRESSED_GRAY_ALPHA;
    case PixelFormat.uncompressedR5G6B5:
      return raylib.PixelFormat.UNCOMPRESSED_R5G6B5;
    case PixelFormat.uncompressedR8G8B8:
      return raylib.PixelFormat.UNCOMPRESSED_R8G8B8;
    case PixelFormat.uncompressedR5G5B5A1:
      return raylib.PixelFormat.UNCOMPRESSED_R5G5B5A1;
    case PixelFormat.uncompressedR4G4B4A4:
      return raylib.PixelFormat.UNCOMPRESSED_R4G4B4A4;
    case PixelFormat.uncompressedR8G8B8A8:
      return raylib.PixelFormat.UNCOMPRESSED_R8G8B8A8;
    case PixelFormat.uncompressedR32:
      return raylib.PixelFormat.UNCOMPRESSED_R32;
    case PixelFormat.uncompressedR32G32B32:
      return raylib.PixelFormat.UNCOMPRESSED_R32G32B32;
    case PixelFormat.uncompressedR32G32B32A32:
      return raylib.PixelFormat.UNCOMPRESSED_R32G32B32A32;
    case PixelFormat.compressedDXT1rgb:
      return raylib.PixelFormat.COMPRESSED_DXT1_RGB;
    case PixelFormat.compressedDXT1rgba:
      return raylib.PixelFormat.COMPRESSED_DXT1_RGBA;
    case PixelFormat.compressedDXT3rgba:
      return raylib.PixelFormat.COMPRESSED_DXT3_RGBA;
    case PixelFormat.compressedDXT5rgba:
      return raylib.PixelFormat.COMPRESSED_DXT5_RGBA;
    case PixelFormat.compressedETC1rgb:
      return raylib.PixelFormat.COMPRESSED_ETC1_RGB;
    case PixelFormat.compressedETC2rgb:
      return raylib.PixelFormat.COMPRESSED_ETC2_RGB;
    case PixelFormat.compressedETC2eacRGBA:
      return raylib.PixelFormat.COMPRESSED_ETC2_EAC_RGBA;
    case PixelFormat.compressedPVRTrgb:
      return raylib.PixelFormat.COMPRESSED_PVRT_RGB;
    case PixelFormat.compressedPVRTrgba:
      return raylib.PixelFormat.COMPRESSED_PVRT_RGBA;
    case PixelFormat.compressedASTC4x4rgba:
      return raylib.PixelFormat.COMPRESSED_ASTC_4x4_RGBA;
    case PixelFormat.compressedASTC8x8rgba:
      return raylib.PixelFormat.COMPRESSED_ASTC_8x8_RGBA;
  }
}

/// Convert given native value to dart enum.
PixelFormat pixelFormatToDart(int format) {
  switch (format) {
    case raylib.PixelFormat.UNCOMPRESSED_GRAYSCALE:
      return PixelFormat.uncompressedGrayscale;
    case raylib.PixelFormat.UNCOMPRESSED_GRAY_ALPHA:
      return PixelFormat.uncompressedGrayAlpha;
    case raylib.PixelFormat.UNCOMPRESSED_R5G6B5:
      return PixelFormat.uncompressedR5G6B5;
    case raylib.PixelFormat.UNCOMPRESSED_R8G8B8:
      return PixelFormat.uncompressedR8G8B8;
    case raylib.PixelFormat.UNCOMPRESSED_R5G5B5A1:
      return PixelFormat.uncompressedR5G5B5A1;
    case raylib.PixelFormat.UNCOMPRESSED_R4G4B4A4:
      return PixelFormat.uncompressedR4G4B4A4;
    case raylib.PixelFormat.UNCOMPRESSED_R8G8B8A8:
      return PixelFormat.uncompressedR8G8B8A8;
    case raylib.PixelFormat.UNCOMPRESSED_R32:
      return PixelFormat.uncompressedR32;
    case raylib.PixelFormat.UNCOMPRESSED_R32G32B32:
      return PixelFormat.uncompressedR32G32B32;
    case raylib.PixelFormat.UNCOMPRESSED_R32G32B32A32:
      return PixelFormat.uncompressedR32G32B32A32;
    case raylib.PixelFormat.COMPRESSED_DXT1_RGB:
      return PixelFormat.compressedDXT1rgb;
    case raylib.PixelFormat.COMPRESSED_DXT1_RGBA:
      return PixelFormat.compressedDXT1rgba;
    case raylib.PixelFormat.COMPRESSED_DXT3_RGBA:
      return PixelFormat.compressedDXT3rgba;
    case raylib.PixelFormat.COMPRESSED_DXT5_RGBA:
      return PixelFormat.compressedDXT5rgba;
    case raylib.PixelFormat.COMPRESSED_ETC1_RGB:
      return PixelFormat.compressedETC1rgb;
    case raylib.PixelFormat.COMPRESSED_ETC2_RGB:
      return PixelFormat.compressedETC2rgb;
    case raylib.PixelFormat.COMPRESSED_ETC2_EAC_RGBA:
      return PixelFormat.compressedETC2eacRGBA;
    case raylib.PixelFormat.COMPRESSED_PVRT_RGB:
      return PixelFormat.compressedPVRTrgb;
    case raylib.PixelFormat.COMPRESSED_PVRT_RGBA:
      return PixelFormat.compressedPVRTrgba;
    case raylib.PixelFormat.COMPRESSED_ASTC_4x4_RGBA:
      return PixelFormat.compressedASTC4x4rgba;
    case raylib.PixelFormat.COMPRESSED_ASTC_8x8_RGBA:
      return PixelFormat.compressedASTC8x8rgba;
    default:
      throw Exception('Unknown PixelFormat: $format');
  }
}
