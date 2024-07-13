import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Ray, ray for raycasting.
class Ray extends NativeClass<raylib.Ray> {
  /// Ray, ray for raycasting.
  Ray({
    Vector3? position,
    Vector3? direction,
  }) : pointer = malloc<raylib.Ray>(sizeOf<raylib.Ray>()) {
    position ??= Vector3.zero();
    direction ??= Vector3.zero();

    ref = pointer!.ref;
    this.position = position;
    this.direction = direction;
  }

  /// Construct Ray from native reference.
  Ray.fromRef(raylib.Ray ref)
      : pointer = null,
        super.fromRef(ref);

  /// Native pointer, used internally.
  final Pointer<raylib.Ray>? pointer;

  /// Ray position (origin).
  Vector3 get position => Vector3.fromRef(ref.position);
  set position(Vector3 position) {
    ref.position.x = position.x;
    ref.position.y = position.y;
    ref.position.z = position.z;
  }

  /// Ray direction.
  Vector3 get direction => Vector3.fromRef(ref.direction);
  set direction(Vector3 direction) {
    ref.direction.x = direction.x;
    ref.direction.y = direction.y;
    ref.direction.z = direction.z;
  }
}
