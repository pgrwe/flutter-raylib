import 'dart:ffi';

import 'package:ffi/ffi.dart';

/// Turn a list of [int] into a pointer.
Pointer<Int32> toPointer(List<int> points) {
  final pointer = malloc<Int32>(
    sizeOf<Int32>() * points.length,
  );
  for (var i = 0; i < points.length; i++) {
    pointer.elementAt(i).value = points[i];
  }
  return pointer;
}
