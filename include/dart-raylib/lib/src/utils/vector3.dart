import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Turn a list of [Vector3] into a pointer.
Pointer<raylib.Vector3> toPointer(List<Vector3> points) {
  final pointer = malloc<raylib.Vector3>(
    sizeOf<raylib.Vector3>() * points.length,
  );
  for (var i = 0; i < points.length; i++) {
    pointer.elementAt(i).ref.x = points[i].x;
    pointer.elementAt(i).ref.y = points[i].y;
    pointer.elementAt(i).ref.z = points[i].z;
  }
  return pointer;
}
