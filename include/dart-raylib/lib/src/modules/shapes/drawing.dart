import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/vector2.dart' as vector2;

/// Set texture and rectangle to be used on shapes drawing.
///
/// NOTE: It can be useful when using basic shapes and one single font,
/// defining a font char white rectangle would allow drawing everything in
/// a single draw call.
void setShapesTexture(Texture2D texture, Rectangle source) {
  return library.SetShapesTexture(texture.ref, source.ref);
}

/// Draw a pixel.
void drawPixel(int posX, int posY, Color color) {
  return library.DrawPixel(posX, posY, color.ref);
}

/// Draw a pixel (Vector version).
void drawPixelV(Vector2 position, Color color) {
  return library.DrawPixelV(position.ref, color.ref);
}

/// Draw a line.
void drawLine(
  int startPosX,
  int startPosY,
  int endPosX,
  int endPosY,
  Color color,
) {
  return library.DrawLine(
    startPosX,
    startPosY,
    endPosX,
    endPosY,
    color.ref,
  );
}

/// Draw a line (Vector version).
void drawLineV(Vector2 startPos, Vector2 endPos, Color color) {
  return library.DrawLineV(startPos.ref, endPos.ref, color.ref);
}

/// Draw a line defining thickness.
void drawLineEx(Vector2 startPos, Vector2 endPos, double thick, Color color) {
  return library.DrawLineEx(startPos.ref, endPos.ref, thick, color.ref);
}

/// Draw a line using cubic-bezier curves in-out.
void drawLineBezier(
  Vector2 startPos,
  Vector2 endPos,
  double thick,
  Color color,
) {
  return library.DrawLineBezier(
    startPos.ref,
    endPos.ref,
    thick,
    color.ref,
  );
}

///Draw line using quadratic bezier curves with a control point.
void drawLineBezierQuad(
  Vector2 startPos,
  Vector2 endPos,
  Vector2 controlPos,
  double thick,
  Color color,
) {
  return library.DrawLineBezierQuad(
    startPos.ref,
    endPos.ref,
    controlPos.ref,
    thick,
    color.ref,
  );
}

/// Draw line using cubic bezier curves with 2 control points.
void drawLineBezierCubic(
  Vector2 startPos,
  Vector2 endPos,
  Vector2 startControlPos,
  Vector2 endControlPos,
  double thick,
  Color color,
) {
  return library.DrawLineBezierCubic(
    startPos.ref,
    endPos.ref,
    startControlPos.ref,
    endControlPos.ref,
    thick,
    color.ref,
  );
}

/// Draw lines sequence.
void drawLineStrip(List<Vector2> points, Color color) {
  return library.DrawLineStrip(
    vector2.toPointer(points),
    points.length,
    color.ref,
  );
}

/// Draw a color-filled circle.
void drawCircle(int centerX, int centerY, double radius, Color color) {
  return library.DrawCircle(centerX, centerY, radius, color.ref);
}

/// Draw a piece of a circle.
void drawCircleSector(
  Vector2 center,
  double radius,
  double startAngle,
  double endAngle,
  int segments,
  Color color,
) {
  return library.DrawCircleSector(
    center.ref,
    radius,
    startAngle,
    endAngle,
    segments,
    color.ref,
  );
}

/// Draw circle sector outline.
void drawCircleSectorLines(
  Vector2 center,
  double radius,
  double startAngle,
  double endAngle,
  int segments,
  Color color,
) {
  return library.DrawCircleSectorLines(
    center.ref,
    radius,
    startAngle,
    endAngle,
    segments,
    color.ref,
  );
}

/// Draw a gradient-filled circle.
void drawCircleGradient(
  int centerX,
  int centerY,
  double radius,
  Color color1,
  Color color2,
) {
  return library.DrawCircleGradient(
    centerX,
    centerY,
    radius,
    color1.ref,
    color2.ref,
  );
}

/// Draw a color-filled circle (Vector version).
void drawCircleV(Vector2 center, double radius, Color color) {
  return library.DrawCircleV(center.ref, radius, color.ref);
}

/// Draw circle outline.
void drawCircleLines(int centerX, int centerY, double radius, Color color) {
  return library.DrawCircleLines(centerX, centerY, radius, color.ref);
}

/// Draw ellipse.
void drawEllipse(
  int centerX,
  int centerY,
  double radiusH,
  double radiusV,
  Color color,
) {
  return library.DrawEllipse(
    centerX,
    centerY,
    radiusH,
    radiusV,
    color.ref,
  );
}

/// Draw ellipse outline.
void drawEllipseLines(
  int centerX,
  int centerY,
  double radiusH,
  double radiusV,
  Color color,
) {
  return library.DrawEllipseLines(
    centerX,
    centerY,
    radiusH,
    radiusV,
    color.ref,
  );
}

/// Draw ring.
void drawRing(
  Vector2 center,
  double innerRadius,
  double outerRadius,
  double startAngle,
  double endAngle,
  int segments,
  Color color,
) {
  return library.DrawRing(
    center.ref,
    innerRadius,
    outerRadius,
    startAngle,
    endAngle,
    segments,
    color.ref,
  );
}

/// Draw ring outline.
void drawRingLines(
  Vector2 center,
  double innerRadius,
  double outerRadius,
  double startAngle,
  double endAngle,
  int segments,
  Color color,
) {
  return library.DrawRingLines(
    center.ref,
    innerRadius,
    outerRadius,
    startAngle,
    endAngle,
    segments,
    color.ref,
  );
}

/// Draw a color-filled rectangle.
void drawRectangle(int posX, int posY, int width, int height, Color color) {
  return library.DrawRectangle(posX, posY, width, height, color.ref);
}

/// Draw a color-filled rectangle (Vector version).
void drawRectangleV(Vector2 position, Vector2 size, Color color) {
  return library.DrawRectangleV(position.ref, size.ref, color.ref);
}

/// Draw a color-filled rectangle.
void drawRectangleRec(Rectangle rec, Color color) {
  return library.DrawRectangleRec(rec.ref, color.ref);
}

/// Draw a color-filled rectangle with pro parameters.
void drawRectanglePro(
  Rectangle rec,
  Vector2 origin,
  double rotation,
  Color color,
) {
  return library.DrawRectanglePro(
    rec.ref,
    origin.ref,
    rotation,
    color.ref,
  );
}

/// Draw a vertical-gradient-filled rectangle.
void drawRectangleGradientV(
  int posX,
  int posY,
  int width,
  int height,
  Color color1,
  Color color2,
) {
  return library.DrawRectangleGradientV(
    posX,
    posY,
    width,
    height,
    color1.ref,
    color2.ref,
  );
}

/// Draw a horizontal-gradient-filled rectangle.
void drawRectangleGradientH(
  int posX,
  int posY,
  int width,
  int height,
  Color color1,
  Color color2,
) {
  return library.DrawRectangleGradientH(
    posX,
    posY,
    width,
    height,
    color1.ref,
    color2.ref,
  );
}

/// Draw a gradient-filled rectangle with custom vertex colors.
void drawRectangleGradientEx(
  Rectangle rec,
  Color col1,
  Color col2,
  Color col3,
  Color col4,
) {
  return library.DrawRectangleGradientEx(
    rec.ref,
    col1.ref,
    col2.ref,
    col3.ref,
    col4.ref,
  );
}

/// Draw rectangle outline.
void drawRectangleLines(
  int posX,
  int posY,
  int width,
  int height,
  Color color,
) {
  return library.DrawRectangleLines(
    posX,
    posY,
    width,
    height,
    color.ref,
  );
}

/// Draw rectangle outline with extended parameters.
void drawRectangleLinesEx(Rectangle rec, double lineThick, Color color) {
  return library.DrawRectangleLinesEx(rec.ref, lineThick, color.ref);
}

/// Draw rectangle with rounded edges.
void drawRectangleRounded(
  Rectangle rec,
  double roundness,
  int segments,
  Color color,
) {
  return library.DrawRectangleRounded(
    rec.ref,
    roundness,
    segments,
    color.ref,
  );
}

/// Draw rectangle with rounded edges outline.
void drawRectangleRoundedLines(
  Rectangle rec,
  double roundness,
  int segments,
  double lineThick,
  Color color,
) {
  return library.DrawRectangleRoundedLines(
    rec.ref,
    roundness,
    segments,
    lineThick,
    color.ref,
  );
}

/// Draw a color-filled triangle (vertex in counter-clockwise order!).
void drawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color) {
  return library.DrawTriangle(v1.ref, v2.ref, v3.ref, color.ref);
}

/// Draw triangle outline (vertex in counter-clockwise order!).
void drawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color) {
  return library.DrawTriangleLines(v1.ref, v2.ref, v3.ref, color.ref);
}

/// Draw a triangle fan defined by points (first vertex is the center).
void drawTriangleFan(List<Vector2> points, Color color) {
  return library.DrawTriangleFan(
    vector2.toPointer(points),
    points.length,
    color.ref,
  );
}

/// Draw a triangle strip defined by points.
void drawTriangleStrip(List<Vector2> points, Color color) {
  return library.DrawTriangleStrip(
    vector2.toPointer(points),
    points.length,
    color.ref,
  );
}

/// Draw a regular polygon (Vector version).
void drawPoly(
  Vector2 center,
  int sides,
  double radius,
  double rotation,
  Color color,
) {
  return library.DrawPoly(
    center.ref,
    sides,
    radius,
    rotation,
    color.ref,
  );
}

/// Draw a polygon outline of n sides.
void drawPolyLines(
  Vector2 center,
  int sides,
  double radius,
  double rotation,
  Color color,
) {
  return library.DrawPolyLines(
    center.ref,
    sides,
    radius,
    rotation,
    color.ref,
  );
}

/// Draw a polygon outline of n sides with extended parameters.
void drawPolyLinesEx(
  Vector2 center,
  int sides,
  double radius,
  double rotation,
  double lineThick,
  Color color,
) {
  return library.DrawPolyLinesEx(
    center.ref,
    sides,
    radius,
    rotation,
    lineThick,
    color.ref,
  );
}
