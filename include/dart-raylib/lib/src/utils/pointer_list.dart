import 'dart:ffi';

/// Class constructor for pointers that contain multiple items.
class PointerList<V extends NativeType> {
  /// Class constructor for pointers that contain multiple items.
  PointerList(this.pointer);

  /// Native pointer.
  final Pointer<V> pointer;
}

/// Adds extension for lists of doubles.
extension FloatList on PointerList<Float> {
  /// The object at the given [index] in the list.
  double operator [](int index) {
    return pointer.elementAt(index).value;
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, double value) {
    pointer.elementAt(index).value = value;
  }
}

/// Adds extension for lists of uint8.
extension Uint8List on PointerList<Uint8> {
  /// The object at the given [index] in the list.
  int operator [](int index) {
    return pointer.elementAt(index).value;
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, int value) {
    pointer.elementAt(index).value = value;
  }
}

/// Adds extension for lists of uint16.
extension Uint16List on PointerList<Uint16> {
  /// The object at the given [index] in the list.
  int operator [](int index) {
    return pointer.elementAt(index).value;
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, int value) {
    pointer.elementAt(index).value = value;
  }
}

/// Adds extension for lists of uint32.
extension Uint32List on PointerList<Uint32> {
  /// The object at the given [index] in the list.
  int operator [](int index) {
    return pointer.elementAt(index).value;
  }

  /// Sets the value at the given [index] in the list to [value].
  void operator []=(int index, int value) {
    pointer.elementAt(index).value = value;
  }
}
