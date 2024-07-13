import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/string.dart' as string;
import 'package:raylib/src/utils/vector2.dart' as vector2;

/// Clear image background with given color.
void imageClearBackground(Image dst, Color color) {
  return library.ImageClearBackground(dst.pointer, color.ref);
}

/// Draw pixel within an image.
void imageDrawPixel(Image dst, int posX, int posY, Color color) {
  return library.ImageDrawPixel(dst.pointer, posX, posY, color.ref);
}

/// Draw pixel within an image (Vector version).
void imageDrawPixelV(Image dst, Vector2 position, Color color) {
  return library.ImageDrawPixelV(dst.pointer, position.ref, color.ref);
}

/// Draw line within an image.
void imageDrawLine(
  Image dst,
  int startPosX,
  int startPosY,
  int endPosX,
  int endPosY,
  Color color,
) {
  return library.ImageDrawLine(
    dst.pointer,
    startPosX,
    startPosY,
    endPosX,
    endPosY,
    color.ref,
  );
}

/// Draw line within an image (Vector version).
void imageDrawLineV(Image dst, Vector2 start, Vector2 end, Color color) {
  return library.ImageDrawLineV(dst.pointer, start.ref, end.ref, color.ref);
}

/// Draw circle within an image.
void imageDrawCircle(
  Image dst,
  int centerX,
  int centerY,
  int radius,
  Color color,
) {
  return library.ImageDrawCircle(
    dst.pointer,
    centerX,
    centerY,
    radius,
    color.ref,
  );
}

/// Draw circle within an image (Vector version).
void imageDrawCircleV(Image dst, Vector2 center, int radius, Color color) {
  return library.ImageDrawCircleV(dst.pointer, center.ref, radius, color.ref);
}

/// Draw rectangle within an image.
void imageDrawRectangle(
  Image dst,
  int posX,
  int posY,
  int width,
  int height,
  Color color,
) {
  return library.ImageDrawRectangle(
    dst.pointer,
    posX,
    posY,
    width,
    height,
    color.ref,
  );
}

/// Draw rectangle within an image (Vector version).
void imageDrawRectangleV(
  Image dst,
  Vector2 position,
  Vector2 size,
  Color color,
) {
  return library.ImageDrawRectangleV(
    dst.pointer,
    position.ref,
    size.ref,
    color.ref,
  );
}

/// Draw rectangle within an image.
void imageDrawRectangleRec(Image dst, Rectangle rec, Color color) {
  return library.ImageDrawRectangleRec(dst.pointer, rec.ref, color.ref);
}

/// Draw rectangle lines within an image.
void imageDrawRectangleLines(Image dst, Rectangle rec, int thick, Color color) {
  return library.ImageDrawRectangleLines(
    dst.pointer,
    rec.ref,
    thick,
    color.ref,
  );
}

/// Draw a source image within a destination image (tint applied to source).
void imageDraw(
  Image dst,
  Image src,
  Rectangle srcRec,
  Rectangle dstRec,
  Color tint,
) {
  return library.ImageDraw(
    dst.pointer,
    src.ref,
    srcRec.ref,
    dstRec.ref,
    tint.ref,
  );
}

/// Draw text (using default font) within an image (destination).
void imageDrawText(
  Image dst,
  String text,
  int posX,
  int posY,
  int fontSize,
  Color color,
) {
  return library.ImageDrawText(
    dst.pointer,
    string.toNative(text),
    posX,
    posY,
    fontSize,
    color.ref,
  );
}

/// Draw text (custom sprite font) within an image (destination).
void imageDrawTextEx(
  Image dst,
  Font font,
  String text,
  Vector2 position,
  double fontSize,
  double spacing,
  Color tint,
) {
  return library.ImageDrawTextEx(
    dst.pointer,
    font.ref,
    string.toNative(text),
    position.ref,
    fontSize,
    spacing,
    tint.ref,
  );
}

/// Draw a Texture2D.
void drawTexture(Texture2D texture, int posX, int posY, Color tint) {
  return library.DrawTexture(texture.ref, posX, posY, tint.ref);
}

/// Draw a Texture2D with position defined as Vector2.
void drawTextureV(Texture2D texture, Vector2 position, Color tint) {
  return library.DrawTextureV(texture.ref, position.ref, tint.ref);
}

/// Draw a Texture2D with extended parameters.
void drawTextureEx(
  Texture2D texture,
  Vector2 position,
  double rotation,
  double scale,
  Color tint,
) {
  return library.DrawTextureEx(
    texture.ref,
    position.ref,
    rotation,
    scale,
    tint.ref,
  );
}

/// Draw a part of a texture defined by a rectangle.
void drawTextureRec(
  Texture2D texture,
  Rectangle source,
  Vector2 position,
  Color tint,
) {
  return library.DrawTextureRec(
    texture.ref,
    source.ref,
    position.ref,
    tint.ref,
  );
}

/// Draw texture quad with tiling and offset parameters.
void drawTextureQuad(
  Texture2D texture,
  Vector2 tiling,
  Vector2 offset,
  Rectangle quad,
  Color tint,
) {
  return library.DrawTextureQuad(
    texture.ref,
    tiling.ref,
    offset.ref,
    quad.ref,
    tint.ref,
  );
}

/// Draw part of a texture (defined by a rectangle) with rotation and scale
/// tiled into dest..
void drawTextureTiled(
  Texture2D texture,
  Rectangle source,
  Rectangle dest,
  Vector2 origin,
  double rotation,
  double scale,
  Color tint,
) {
  return library.DrawTextureTiled(
    texture.ref,
    source.ref,
    dest.ref,
    origin.ref,
    rotation,
    scale,
    tint.ref,
  );
}

/// Draw a part of a texture defined by a rectangle with 'pro' parameters.
void drawTexturePro(
  Texture2D texture,
  Rectangle source,
  Rectangle dest,
  Vector2 origin,
  double rotation,
  Color tint,
) {
  return library.DrawTexturePro(
    texture.ref,
    source.ref,
    dest.ref,
    origin.ref,
    rotation,
    tint.ref,
  );
}

/// Draws a texture (or part of it) that stretches or shrinks nicely.
void drawTextureNPatch(
  Texture2D texture,
  NPatchInfo nPatchInfo,
  Rectangle dest,
  Vector2 origin,
  double rotation,
  Color tint,
) {
  return library.DrawTextureNPatch(
    texture.ref,
    nPatchInfo.ref,
    dest.ref,
    origin.ref,
    rotation,
    tint.ref,
  );
}

/// Draw a textured polygon.
void drawTexturePoly(
  Texture2D texture,
  Vector2 center,
  List<Vector2> points,
  List<Vector2> texcoords,
  int pointsCount,
  Color tint,
) {
  return library.DrawTexturePoly(
    texture.ref,
    center.ref,
    vector2.toPointer(points),
    vector2.toPointer(texcoords),
    pointsCount,
    tint.ref,
  );
}
