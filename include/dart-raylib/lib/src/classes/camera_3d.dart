import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Camera projections
enum CameraProjection {
  /// Perspective.
  perspective,

  /// Orthographic.
  orthographic,
}

/// Camera, defines position/orientation in 3d space.
class Camera3D extends NativeClass<raylib.Camera3D> {
  /// Camera, defines position/orientation in 3d space.
  Camera3D({
    Vector3? position,
    Vector3? target,
    Vector3? up,
    double fovy = 1,
    CameraProjection projection = CameraProjection.perspective,
  }) : pointer = malloc<raylib.Camera3D>(sizeOf<raylib.Camera3D>()) {
    position ??= Vector3.zero();
    target ??= Vector3.zero();
    up ??= Vector3.zero();

    ref = pointer.ref;
    this.position = position;
    this.target = target;
    this.up = up;
    this.fovy = fovy;
    this.projection = projection;
  }

  /// Native pointer, used internally.
  final Pointer<raylib.Camera3D> pointer;

  /// Camera position.
  Vector3 get position => Vector3.fromRef(ref.position);
  set position(Vector3 position) {
    ref.position.x = position.x;
    ref.position.y = position.y;
    ref.position.z = position.z;
  }

  /// Camera target it looks-at.
  Vector3 get target => Vector3.fromRef(ref.target);
  set target(Vector3 target) {
    ref.target.x = target.x;
    ref.target.y = target.y;
    ref.target.z = target.z;
  }

  /// Camera up vector (rotation over its axis).
  Vector3 get up => Vector3.fromRef(ref.up);
  set up(Vector3 up) {
    ref.up.x = up.x;
    ref.up.y = up.y;
    ref.up.z = up.z;
  }

  /// Camera field-of-view apperture in Y (degrees) in perspective, used as
  /// near plane width in orthographic.
  double get fovy => ref.fovy;
  set fovy(double fovy) => ref.fovy = fovy;

  /// Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
  CameraProjection get projection {
    switch (ref.projection) {
      case 0:
        return CameraProjection.perspective;
      case 1:
        return CameraProjection.orthographic;
      default:
        throw Exception('Unsupported projection: ${ref.projection}');
    }
  }

  set projection(CameraProjection projection) {
    switch (projection) {
      case CameraProjection.perspective:
        ref.projection = 0;
        break;
      case CameraProjection.orthographic:
        ref.projection = 1;
        break;
    }
  }

  @override
  String toString() {
    return 'Camera3D { $position, $target, $up, $fovy, $projection }';
  }
}

/// Camera type fallback, defaults to [Camera3D].
typedef Camera = Camera3D;
