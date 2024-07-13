import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/string.dart' as string;

/// Measure string width for default font.
int measureText(String text, int fontSize) {
  return library.MeasureText(string.toNative(text), fontSize);
}

/// Measure string size for Font.
Vector2 measureTextEx(
  Font font,
  String text,
  double fontSize,
  double spacing,
) {
  return Vector2.fromRef(
    library.MeasureTextEx(
      font.ref,
      string.toNative(text),
      fontSize,
      spacing,
    ),
  );
}

/// Get glyph index position in font for a codepoint (unicode character),
/// fallback to '?' if not found.
int getGlyphIndex(Font font, int codepoint) {
  return library.GetGlyphIndex(font.ref, codepoint);
}

/// Get glyph font info data for a codepoint (unicode character),
/// fallback to '?' if not found.
GlyphInfo getGlyphInfo(Font font, int codepoint) {
  return GlyphInfo.fromRef(library.GetGlyphInfo(font.ref, codepoint));
}

/// Get glyph rectangle in font atlas for a codepoint (unicode character),
/// fallback to '?' if not found.
Rectangle getGlyphAtlasRec(Font font, int codepoint) {
  return Rectangle.fromRef(library.GetGlyphAtlasRec(font.ref, codepoint));
}
