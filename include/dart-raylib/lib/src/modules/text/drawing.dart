import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/string.dart' as string;

/// Draw current FPS
void drawFPS(int posX, int posY) {
  return library.DrawFPS(posX, posY);
}

/// Draw text (using default font)
void drawText(String text, int posX, int posY, int fontSize, Color color) {
  return library.DrawText(
    string.toNative(text),
    posX,
    posY,
    fontSize,
    color.ref,
  );
}

/// Draw text using font and additional parameters.
void drawTextEx(
  Font font,
  String text,
  Vector2 position,
  double fontSize,
  double spacing,
  Color tint,
) {
  return library.DrawTextEx(
    font.ref,
    string.toNative(text),
    position.ref,
    fontSize,
    spacing,
    tint.ref,
  );
}

/// Draw text using Font and pro parameters (rotation).
void drawTextPro(
  Font font,
  String text,
  Vector2 position,
  Vector2 origin,
  double rotation,
  double fontSize,
  double spacing,
  Color tint,
) {
  return library.DrawTextPro(
    font.ref,
    string.toNative(text),
    position.ref,
    origin.ref,
    rotation,
    fontSize,
    spacing,
    tint.ref,
  );
}

/// Draw one character (codepoint).
void drawTextCodepoint(
  Font font,
  int codepoint,
  Vector2 position,
  double fontSize,
  Color tint,
) {
  return library.DrawTextCodepoint(
    font.ref,
    codepoint,
    position.ref,
    fontSize,
    tint.ref,
  );
}
