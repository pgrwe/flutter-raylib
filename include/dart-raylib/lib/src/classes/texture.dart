import 'package:raylib/raylib.dart';
import 'package:raylib/src/enums/pixel_format.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Texture, tex data stored in GPU memory (VRAM).
class Texture extends NativeClass<raylib.Texture> {
  /// Construct Texture from native reference.
  Texture.fromRef(raylib.Texture ref) : super.fromRef(ref);

  /// OpenGL texture id.
  int get id => ref.id;

  /// Texture base width.
  int get width => ref.width;

  /// Texture base height.
  int get height => ref.height;

  /// Mipmap levels, 1 by default.
  int get mipmaps => ref.mipmaps;

  /// Data format (PixelFormat type).
  PixelFormat get format => pixelFormatToDart(ref.format);
}

/// Texture2D, same as Texture
typedef Texture2D = Texture;

/// TextureCubemap, same as Texture
typedef TextureCubemap = Texture;
