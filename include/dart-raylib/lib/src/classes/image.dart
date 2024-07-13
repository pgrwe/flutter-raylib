import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/enums/pixel_format.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Image, pixel data stored in CPU memory (RAM).
class Image extends NativeClass<raylib.Image> {
  /// Image, pixel data stored in CPU memory (RAM).
  Image({
    required int width,
    required int height,
    int mipmaps = 1,
    PixelFormat format = PixelFormat.uncompressedR8G8B8A8,
  }) : pointer = malloc<raylib.Image>(sizeOf<raylib.Image>()) {
    pointer.ref.width = width;
    pointer.ref.height = height;
    pointer.ref.mipmaps = mipmaps;
    pointer.ref.format = pixelFormatToNative(format);

    ref = pointer.ref;
  }

  /// Image, pixel data stored in CPU memory (RAM).
  Image.fromRef(raylib.Image ref)
      : pointer = malloc<raylib.Image>(sizeOf<raylib.Image>()) {
    pointer.ref.width = ref.width;
    pointer.ref.width = ref.height;
    pointer.ref.mipmaps = ref.mipmaps;
    pointer.ref.format = ref.format;
    pointer.ref.data = ref.data;

    ref = pointer.ref;
  }

  /// Native pointer, used internally.
  final Pointer<raylib.Image> pointer;

  /// Image raw data
  // TODO(wolfen): What type?
  // ffi.Pointer<ffi.Void> get data => ref.data;

  /// Image base width.
  int get width => ref.width;

  /// Image base height.
  int get height => ref.height;

  /// Mipmap levels, 1 by default.
  int get mipmaps => ref.mipmaps;

  /// Data format (PixelFormat type).
  PixelFormat get format => pixelFormatToDart(ref.format);
}
