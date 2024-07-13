import 'dart:ffi';

/// Simple native reference structure.
abstract class NativeClass<T extends Struct> {
  /// Simple native reference structure.
  NativeClass();

  /// Construct from native reference.
  NativeClass.fromRef(this.ref);

  /// Native reference.
  late final T ref;
}
