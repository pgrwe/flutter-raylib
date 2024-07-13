import 'dart:ffi';

import 'package:raylib/raylib.dart';
import 'package:raylib/src/enums/pixel_format.dart';
import 'package:raylib/src/library.dart';

/// Returns color with alpha applied, alpha goes from 0.0 to 1.0.
Color fade(Color color, double alpha) {
  return Color.fromRef(library.Fade(color.ref, alpha));
}

/// Returns hexadecimal value for a Color.
int colorToInt(Color color) {
  return library.ColorToInt(color.ref);
}

/// Returns Color normalized as double (0..1).
Vector4 colorNormalize(Color color) {
  return Vector4.fromRef(library.ColorNormalize(color.ref));
}

/// Returns Color from normalized values (0..1).
Color colorFromNormalized(Vector4 normalized) {
  return Color.fromRef(library.ColorFromNormalized(normalized.ref));
}

/// Returns HSV values for a Color, hue (0..360), saturation/value (0..1).
Vector3 colorToHSV(Color color) {
  return Vector3.fromRef(library.ColorToHSV(color.ref));
}

/// Returns color with alpha applied, alpha goes from 0.0 to 1.0.
Color colorAlpha(Color color, double alpha) {
  return Color.fromRef(library.ColorAlpha(color.ref, alpha));
}

/// Returns src alpha-blended into dst color with tint.
Color colorAlphaBlend(Color dst, Color src, Color tint) {
  return Color.fromRef(library.ColorAlphaBlend(dst.ref, src.ref, tint.ref));
}

/// Get Color structure from hexadecimal value.
Color getColor(int hexValue) {
  return Color.fromRef(library.GetColor(hexValue));
}

/// Returns a Color from HSV values, hue (0..360), saturation/value (0..1).
Color colorFromHSV(double hue, double saturation, double value) {
  return Color.fromRef(library.ColorFromHSV(hue, saturation, value));
}

/// Get Color from a source pixel pointer of certain format.
Color getPixelColor(PixelFormat format) {
  final color = Color(0, 0, 0, 0);
  library.GetPixelColor(
    color.pointer!.cast<Void>(),
    pixelFormatToNative(format),
  );

  return color;
}

// TODO(wolfen): this
// /// Set color formatted into destination pixel pointer.
// void SetPixelColor(void *dstPtr, Color color, PixelFormat format) {
//   return library.SetPixelColor(dstPtr, color, pixelFormatToNative(format));
// }

/// Get pixel data size in bytes for certain format.
int getPixelDataSize(int width, int height, PixelFormat format) {
  return library.GetPixelDataSize(width, height, pixelFormatToNative(format));
}
