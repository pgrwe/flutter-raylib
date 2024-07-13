import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// Font, font texture and GlyphInfo array data.
class Font extends NativeClass<raylib.Font> {
  /// Font, font texture and GlyphInfo array data.
  Font.fromRef(raylib.Font ref)
      : recs = PointerList(ref.recs),
        glyphs = PointerList(ref.glyphs),
        super.fromRef(ref);

  /// Base size (default chars height).
  int get baseSize => ref.baseSize;

  /// Number of glyph characters.
  int get glyphCount => ref.glyphCount;

  /// Padding around the glyph characters.
  int get glyphPadding => ref.glyphCount;

  /// Texture atlas containing the glyphs.
  Texture2D get texture => Texture.fromRef(ref.texture);

  /// Rectangles in texture for the glyphs.
  final PointerList<raylib.Rectangle> recs;

  /// Glyphs info data.
  final PointerList<raylib.GlyphInfo> glyphs;
}
