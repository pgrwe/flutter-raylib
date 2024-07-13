import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

void _ensureNotNullptr(Pointer pointer, String operation) {
  if (pointer == nullptr) {
    throw UnsupportedError(
      'Operation $operation not allowed on a nullptr.',
    );
  }
}

/// Convert given string to native pointer.
Pointer<Int8> toNative(String value) {
  final units = utf8.encode(value);
  final result = malloc<Uint8>(units.length + 1);
  final nativeString = result.asTypedList(units.length + 1)..setAll(0, units);
  nativeString[units.length] = 0;
  return result.cast<Int8>();
}

/// Convert given string to native pointer.
Pointer<Uint8> toNativeUnsigned(String value) {
  final units = utf8.encode(value);
  final result = malloc<Uint8>(units.length + 1);
  final nativeString = result.asTypedList(units.length + 1)..setAll(0, units);
  nativeString[units.length] = 0;
  return result.cast<Uint8>();
}

/// Convert given native pointer to string.
String toDart(Pointer<Int8> pointer) {
  _ensureNotNullptr(pointer, 'toDart');
  final codeUnits = pointer.cast<Int8>();
  var length = 0;
  while (codeUnits[length] != 0) {
    length++;
  }
  return utf8.decode(codeUnits.asTypedList(length));
}
