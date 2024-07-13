import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// RenderTexture, fbo for texture rendering.
class RenderTexture extends NativeClass<raylib.RenderTexture> {
  /// Construct RenderTexture from native reference.
  RenderTexture.fromRef(raylib.RenderTexture ref) : super.fromRef(ref);

  /// OpenGL framebuffer object id.
  int get id => ref.id;

  /// Color buffer attachment texture.
  Texture get texture => Texture.fromRef(ref.texture);

  /// Depth buffer attachment texture
  Texture get depth => Texture.fromRef(ref.depth);
}

/// RenderTexture2D, same as RenderTexture.
typedef RenderTexture2D = RenderTexture;
