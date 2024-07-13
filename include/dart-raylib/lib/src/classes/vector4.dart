import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Vector4, 4 components.
class Vector4 extends NativeClass<raylib.Vector4> {
  /// Vector4, 4 components.
  Vector4(
    double x,
    double y,
    double z,
    double w,
  ) : pointer = malloc<raylib.Vector4>(sizeOf<raylib.Vector4>()) {
    ref = pointer!.ref;
    this.x = x;
    this.y = y;
    this.z = z;
    this.w = w;
  }

  /// Construct Vector4 from native reference.
  Vector4.fromRef(raylib.Vector4 ref)
      : pointer = null,
        super.fromRef(ref);

  /// Construct empty Vector4.
  Vector4.zero() : this.all(0);

  /// Construct Vector2 with all values set to [value].
  Vector4.all(double value) : this(value, value, value, value);

  /// Native pointer, used internally.
  final Pointer<raylib.Vector4>? pointer;

  /// Vector x component.
  double get x => ref.x;
  set x(double x) => ref.x = x;

  /// Vector y component.
  double get y => ref.y;
  set y(double y) => ref.y = y;

  /// Vector z component.
  double get z => ref.z;
  set z(double z) => ref.z = z;

  /// Vector w component.
  double get w => ref.w;
  set w(double w) => ref.w = w;

  @override
  String toString() => 'Vector4 { $x, $y, $z, $w }';
}

/// Quaternion, 4 components ([Vector4] alias)
typedef Quaternion = Vector4;
