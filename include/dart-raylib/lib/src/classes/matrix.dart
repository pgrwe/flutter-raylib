import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Matrix, 4x4 components, column major, OpenGL style, right handed.
class Matrix extends NativeClass<raylib.Matrix> {
  /// Construct Matrix from native reference.
  Matrix.fromRef(raylib.Matrix ref) : super.fromRef(ref);

  /// Matrix first row (4 components) first.
  double get m0 => ref.m0;
  set m0(double m0) => ref.m0 = m0;

  /// Matrix first row (4 components) second.
  double get m4 => ref.m4;
  set m4(double m4) => ref.m4 = m4;

  /// Matrix first row (4 components) third.
  double get m8 => ref.m8;
  set m8(double m8) => ref.m8 = m8;

  /// Matrix first row (4 components) fourth.
  double get m12 => ref.m12;
  set m12(double m12) => ref.m12 = m12;

  /// Matrix second row (4 components) first.
  double get m1 => ref.m1;
  set m1(double m1) => ref.m1 = m1;

  /// Matrix second row (4 components) second.
  double get m5 => ref.m5;
  set m5(double m5) => ref.m5 = m5;

  /// Matrix second row (4 components) third.
  double get m9 => ref.m9;
  set m9(double m9) => ref.m9 = m9;

  /// Matrix second row (4 components) fourth.
  double get m13 => ref.m13;
  set m13(double m13) => ref.m13 = m13;

  /// Matrix third row (4 components) first.
  double get m2 => ref.m2;
  set m2(double m2) => ref.m2 = m2;

  /// Matrix third row (4 components) second.
  double get m6 => ref.m6;
  set m6(double m6) => ref.m6 = m6;

  /// Matrix third row (4 components) third.
  double get m10 => ref.m10;
  set m10(double m10) => ref.m10 = m10;

  /// Matrix third row (4 components) fourth.
  double get m14 => ref.m14;
  set m14(double m14) => ref.m14 = m14;

  /// Matrix fourth row (4 components) first.
  double get m3 => ref.m3;
  set m3(double m3) => ref.m3 = m3;

  /// Matrix fourth row (4 components) second.
  double get m7 => ref.m7;
  set m7(double m7) => ref.m7 = m7;

  /// Matrix fourth row (4 components) third.
  double get m11 => ref.m11;
  set m11(double m11) => ref.m11 = m11;

  /// Matrix fourth row (4 components) fourth.
  double get m15 => ref.m15;
  set m15(double m15) => ref.m15 = m15;
}
