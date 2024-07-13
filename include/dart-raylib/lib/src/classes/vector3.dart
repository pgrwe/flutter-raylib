import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Vector3, 3 components.
class Vector3 extends NativeClass<raylib.Vector3> {
  /// Vector3, 3 components.
  Vector3(
    double x,
    double y,
    double z,
  ) : pointer = malloc<raylib.Vector3>(sizeOf<raylib.Vector3>()) {
    ref = pointer!.ref;
    this.x = x;
    this.y = y;
    this.z = z;
  }

  /// Construct Vector3 from native reference.
  Vector3.fromRef(raylib.Vector3 ref)
      : pointer = null,
        super.fromRef(ref);

  /// Construct empty Vector3.
  Vector3.zero() : this.all(0);

  /// Construct Vector3 with all values set to [value].
  Vector3.all(double value) : this(value, value, value);

  /// Native pointer, used internally.
  final Pointer<raylib.Vector3>? pointer;

  /// Vector x component.
  double get x => ref.x;
  set x(double x) => ref.x = x;

  /// Vector y component.
  double get y => ref.y;
  set y(double y) => ref.y = y;

  /// Vector z component.
  double get z => ref.z;
  set z(double z) => ref.z = z;

  @override
  String toString() => 'Vector3 { $x, $y, $z }';
}
