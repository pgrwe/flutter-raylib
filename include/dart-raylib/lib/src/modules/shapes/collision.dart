import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';

/// Check collision between two rectangles.
bool checkCollisionRecs(Rectangle rec1, Rectangle rec2) {
  return library.CheckCollisionRecs(rec1.ref, rec2.ref);
}

/// Check collision between two circles.
bool checkCollisionCircles(
  Vector2 center1,
  double radius1,
  Vector2 center2,
  double radius2,
) {
  return library.CheckCollisionCircles(
    center1.ref,
    radius1,
    center2.ref,
    radius2,
  );
}

/// Check collision between circle and rectangle.
bool checkCollisionCircleRec(Vector2 center, double radius, Rectangle rec) {
  return library.CheckCollisionCircleRec(center.ref, radius, rec.ref);
}

/// Check if point is inside rectangle.
bool checkCollisionPointRec(Vector2 point, Rectangle rec) {
  return library.CheckCollisionPointRec(point.ref, rec.ref);
}

/// Check if point is inside circle.
bool checkCollisionPointCircle(Vector2 point, Vector2 center, double radius) {
  return library.CheckCollisionPointCircle(point.ref, center.ref, radius);
}

/// Check if point is inside a triangle.
bool checkCollisionPointTriangle(
  Vector2 point,
  Vector2 p1,
  Vector2 p2,
  Vector2 p3,
) {
  return library.CheckCollisionPointTriangle(point.ref, p1.ref, p2.ref, p3.ref);
}

/// Check the collision between two lines defined by two points each, returns
/// collision point by reference.
bool checkCollisionLines(
  Vector2 startPos1,
  Vector2 endPos1,
  Vector2 startPos2,
  Vector2 endPos2,
  Vector2 collisionPoint,
) {
  if (collisionPoint.pointer == null) {
    throw Exception(
      'collisionPoint has no pointer, dont use a returned reference',
    );
  }
  return library.CheckCollisionLines(
    startPos1.ref,
    endPos1.ref,
    startPos2.ref,
    endPos2.ref,
    collisionPoint.pointer!,
  );
}

/// Check if point belongs to line created between two points [p1] and [p2]
/// with defined margin in pixels [threshold].
bool checkCollisionPointLine(
  Vector2 point,
  Vector2 p1,
  Vector2 p2,
  int threshold,
) {
  return library.CheckCollisionPointLine(point.ref, p1.ref, p2.ref, threshold);
}

/// Get collision rectangle for two rectangles collision.
Rectangle getCollisionRec(Rectangle rec1, Rectangle rec2) {
  return Rectangle.fromRef(library.GetCollisionRec(rec1.ref, rec2.ref));
}
