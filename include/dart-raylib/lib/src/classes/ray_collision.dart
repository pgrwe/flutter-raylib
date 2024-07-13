import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// RayCollision, ray hit information.
class RayCollision extends NativeClass<raylib.RayCollision> {
  /// RayCollision, ray hit information.
  RayCollision.fromRef(raylib.RayCollision ref) : super.fromRef(ref);

  /// Did the ray hit something?
  int get hit => ref.hit;

  /// Distance to nearest hit.
  double get distance => ref.distance;

  /// Point of nearest hit.
  Vector3 get point => Vector3.fromRef(ref.point);

  /// Surface normal of hit.
  Vector3 get normal => Vector3.fromRef(ref.normal);
}
