import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// Color, 4 components, R8G8B8A8 (32bit).
class Color extends NativeClass<raylib.Color> {
  /// Color, 4 components, R8G8B8A8 (32bit).
  Color(
    int r,
    int g,
    int b,
    int a,
  ) : pointer = malloc<raylib.Color>(sizeOf<raylib.Color>()) {
    ref = pointer!.ref;
    this.r = r;
    this.g = g;
    this.b = b;
    this.a = a;
  }

  /// Construct Color from native reference.
  Color.fromRef(raylib.Color ref)
      : pointer = null,
        super.fromRef(ref);

  /// Native pointer, used internally.
  final Pointer<raylib.Color>? pointer;

  /// Color red value.
  int get r => ref.r;
  set r(int red) => ref.r = red;

  /// Color green value.
  int get g => ref.g;
  set g(int green) => ref.g = green;

  /// Color blue value.
  int get b => ref.b;
  set b(int blue) => ref.b = blue;

  /// Color alpha value.
  int get a => ref.a;
  set a(int alpha) => ref.a = alpha;

  /// Light gray.
  static final lightGray = Color(200, 200, 200, 255);

  /// Gray.
  static final gray = Color(130, 130, 130, 255);

  /// Dark gray.
  static final darkGray = Color(80, 80, 80, 255);

  /// Yellow.
  static final yellow = Color(253, 249, 0, 255);

  /// Gold.
  static final gold = Color(255, 203, 0, 255);

  /// Gray.
  static final orange = Color(255, 161, 0, 255);

  /// Pink.
  static final pink = Color(255, 109, 194, 255);

  /// Red.
  static final red = Color(230, 41, 55, 255);

  /// Maroon.
  static final maroon = Color(190, 33, 55, 255);

  /// Green.
  static final green = Color(0, 228, 48, 255);

  /// Lime.
  static final lime = Color(0, 158, 47, 255);

  /// Dark green.
  static final darkGreen = Color(0, 117, 44, 255);

  /// Sky blue.
  static final skyBlue = Color(102, 191, 255, 255);

  /// Blue.
  static final blue = Color(0, 121, 241, 255);

  /// Dark blue.
  static final darkBlue = Color(0, 82, 172, 255);

  /// Purple.
  static final purple = Color(200, 122, 255, 255);

  /// Voilet.
  static final voilet = Color(135, 60, 190, 255);

  /// Dark purple.
  static final darkPurple = Color(112, 31, 126, 255);

  /// Beige.
  static final beige = Color(211, 176, 131, 255);

  /// Brown.
  static final brown = Color(127, 106, 79, 255);

  /// Dark brown.
  static final darkBrown = Color(76, 63, 47, 255);

  /// White.
  static final white = Color(255, 255, 255, 255);

  /// Black.
  static final black = Color(0, 0, 0, 255);

  /// Blank.
  static final blank = Color(0, 0, 0, 0);

  /// Magenta
  static final magenta = Color(255, 0, 255, 255);

  /// Ray's white.
  static final rayWhite = Color(245, 245, 245, 255);
}
