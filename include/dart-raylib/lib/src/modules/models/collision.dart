import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';

/// Check collision between two spheres.
bool checkCollisionSpheres(
  Vector3 center1,
  double radius1,
  Vector3 center2,
  double radius2,
) {
  return library.CheckCollisionSpheres(
    center1.ref,
    radius1,
    center2.ref,
    radius2,
  );
}

/// Check collision between two bounding boxes.
bool checkCollisionBoxes(BoundingBox box1, BoundingBox box2) {
  return library.CheckCollisionBoxes(
    box1.ref,
    box2.ref,
  );
}

/// Check collision between box and sphere.
bool checkCollisionBoxSphere(BoundingBox box, Vector3 center, double radius) {
  return library.CheckCollisionBoxSphere(box.ref, center.ref, radius);
}

/// Get collision info between ray and sphere.
RayCollision getRayCollisionSphere(Ray ray, Vector3 center, double radius) {
  return RayCollision.fromRef(
    library.GetRayCollisionSphere(
      ray.ref,
      center.ref,
      radius,
    ),
  );
}

/// Get collision info between ray and box.
RayCollision getRayCollisionBox(Ray ray, BoundingBox box) {
  return RayCollision.fromRef(
    library.GetRayCollisionBox(
      ray.ref,
      box.ref,
    ),
  );
}

/// Get collision info between ray and model.
RayCollision getRayCollisionModel(Ray ray, Model model) {
  return RayCollision.fromRef(
    library.GetRayCollisionModel(
      ray.ref,
      model.ref,
    ),
  );
}

/// Get collision info between ray and mesh.
RayCollision getRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform) {
  return RayCollision.fromRef(
    library.GetRayCollisionMesh(ray.ref, mesh.ref, transform.ref),
  );
}

/// Get collision info between ray and triangle.
RayCollision getRayCollisionTriangle(
  Ray ray,
  Vector3 p1,
  Vector3 p2,
  Vector3 p3,
) {
  return RayCollision.fromRef(
    library.GetRayCollisionTriangle(
      ray.ref,
      p1.ref,
      p2.ref,
      p3.ref,
    ),
  );
}

/// Get collision info between ray and quad.
RayCollision getRayCollisionQuad(
  Ray ray,
  Vector3 p1,
  Vector3 p2,
  Vector3 p3,
  Vector3 p4,
) {
  return RayCollision.fromRef(
    library.GetRayCollisionQuad(
      ray.ref,
      p1.ref,
      p2.ref,
      p3.ref,
      p4.ref,
    ),
  );
}
