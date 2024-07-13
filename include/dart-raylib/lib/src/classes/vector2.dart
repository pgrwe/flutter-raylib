import 'dart:ffi';
import 'dart:math';

import 'package:ffi/ffi.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Vector2, 2 components.
class Vector2 extends NativeClass<raylib.Vector2> {
  /// Vector2, 2 components.
  Vector2(
    double x,
    double y,
  ) : pointer = malloc<raylib.Vector2>(sizeOf<raylib.Vector2>()) {
    ref = pointer!.ref;
    this.x = x;
    this.y = y;
  }

  /// Construct Vector2 from native reference.
  Vector2.fromRef(raylib.Vector2 ref)
      : pointer = null,
        super.fromRef(ref);

  /// Construct empty Vector2.
  Vector2.zero() : this.all(0);

  /// Construct Vector2 with all values set to [value].
  Vector2.all(double value) : this(value, value);

  /// Native pointer, used internally.
  final Pointer<raylib.Vector2>? pointer;

  /// Vector x component.
  double get x => ref.x;
  set x(double x) => ref.x = x;

  /// Vector y component.
  double get y => ref.y;
  set y(double y) => ref.y = y;

  /// Calculate vector length.
  double get length => sqrt((x * x) + (y * y));

  /// Calculate vector square length.
  double get lengthSqr => (x * x) + (y * y);

  /// Calculate two vectors dot product.
  double dot(Vector2 v) => x * v.x + y * v.y;

  /// Calculate distance between two vectors.
  double distance(Vector2 v) {
    return sqrt((x - v.x) * (x - v.x) + (y - v.y) * (y - v.y));
  }

  /// Calculate angle from two vectors in X-axis.
  double angle(Vector2 v) {
    final result = atan2(v.y - y, v.x - x) * (180 / pi);
    if (result < 0) return result + 360;
    return result;
  }

  @override
  String toString() => 'Vector2 { $x, $y }';
}
