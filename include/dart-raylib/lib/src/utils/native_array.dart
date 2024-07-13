import 'dart:collection';
import 'dart:ffi';

import 'package:collection/collection.dart';

/// Simple native array structure.
abstract class NativeArray<T, N extends NativeType> extends ListBase<T>
    with NonGrowableListMixin<T> {
  /// Simple native array structure.
  NativeArray(this.array, this._length);

  /// Native array reference.
  final Array<N> array;

  final int _length;

  @override
  int get length => _length;

  @override
  T operator [](int index) {
    if (index >= _length) {
      throw RangeError(
        'Invalid value: Not in inclusive range 0..$_length: $index',
      );
    }
    return get(index);
  }

  @override
  void operator []=(int index, T value) {
    if (index >= _length - 1) {
      throw RangeError(
        'Invalid value: Not in inclusive range 0..$_length: $index',
      );
    }
    return set(index, value);
  }

  /// Retrieve value from the native array.
  T get(int index);

  /// Set value on the native array.
  void set(int index, T value);
}

/// Native float array.
class FloatArray extends NativeArray<double, Float> {
  /// Native float array.
  FloatArray(Array<Float> array, int length) : super(array, length);

  @override
  double get(int index) => array[index];

  @override
  void set(int index, double value) => array[index] = value;
}

/// Native int8 array.
class Int8Array extends NativeArray<int, Int8> {
  /// Native int8 array.
  Int8Array(Array<Int8> array, int length) : super(array, length);

  @override
  int get(int index) => array[index];

  @override
  void set(int index, int value) => array[index] = value;
}
