import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Turn a list of [Vector2] into a pointer.
Pointer<raylib.Vector2> toPointer(List<Vector2> points) {
  final pointer = malloc<raylib.Vector2>(
    sizeOf<raylib.Vector2>() * points.length,
  );
  for (var i = 0; i < points.length; i++) {
    pointer.elementAt(i).ref.x = points[i].x;
    pointer.elementAt(i).ref.y = points[i].y;
  }
  return pointer;
}
