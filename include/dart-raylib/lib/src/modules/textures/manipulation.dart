import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:raylib/raylib.dart';
import 'package:raylib/src/enums/pixel_format.dart';
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/string.dart' as string;

/// Create an image duplicate (useful for transformations).
Image imageCopy(Image image) {
  return Image.fromRef(library.ImageCopy(image.ref));
}

/// Create an image from another image piece.
Image imageFromImage(Image image, Rectangle rec) {
  return Image.fromRef(library.ImageFromImage(image.ref, rec.ref));
}

/// Create an image from text (default font).
Image imageText(String text, int fontSize, Color color) {
  return Image.fromRef(
    library.ImageText(
      string.toNative(text),
      fontSize,
      color.ref,
    ),
  );
}

/// Create an image from text (custom sprite font).
Image imageTextEx(
  Font font,
  String text,
  double fontSize,
  double spacing,
  Color tint,
) {
  return Image.fromRef(
    library.ImageTextEx(
      font.ref,
      string.toNative(text),
      fontSize,
      spacing,
      tint.ref,
    ),
  );
}

/// Convert image data to desired format.
void imageFormat(Image image, PixelFormat newFormat) {
  return library.ImageFormat(image.pointer, pixelFormatToNative(newFormat));
}

/// Convert image to POT (power-of-two).
void imageToPOT(Image image, Color fill) {
  return library.ImageToPOT(image.pointer, fill.ref);
}

/// Crop an image to a defined rectangle.
void imageCrop(Image image, Rectangle crop) {
  return library.ImageCrop(image.pointer, crop.ref);
}

/// Crop image depending on alpha value.
void imageAlphaCrop(Image image, double threshold) {
  return library.ImageAlphaCrop(image.pointer, threshold);
}

/// Clear alpha channel to desired color.
void imageAlphaClear(Image image, Color color, double threshold) {
  return library.ImageAlphaClear(image.pointer, color.ref, threshold);
}

/// Apply alpha mask to image.
void imageAlphaMask(Image image, Image alphaMask) {
  return library.ImageAlphaMask(image.pointer, alphaMask.ref);
}

/// Premultiply alpha channel.
void imageAlphaPremultiply(Image image) {
  return library.ImageAlphaPremultiply(image.pointer);
}

/// Resize image (Bicubic scaling algorithm).
void imageResize(Image image, int newWidth, int newHeight) {
  return library.ImageResize(image.pointer, newWidth, newHeight);
}

/// Resize image (Nearest-Neighbor scaling algorithm).
void imageResizeNN(Image image, int newWidth, int newHeight) {
  return library.ImageResizeNN(image.pointer, newWidth, newHeight);
}

/// Resize canvas and fill with color.
void imageResizeCanvas(
  Image image,
  int newWidth,
  int newHeight,
  int offsetX,
  int offsetY,
  Color fill,
) {
  return library.ImageResizeCanvas(
    image.pointer,
    newWidth,
    newHeight,
    offsetX,
    offsetY,
    fill.ref,
  );
}

/// Generate all mipmap levels for a provided image.
void imageMipmaps(Image image) {
  return library.ImageMipmaps(image.pointer);
}

/// Dither image data to 16bpp or lower (Floyd-Steinberg dithering).
void imageDither(Image image, int rBpp, int gBpp, int bBpp, int aBpp) {
  return library.ImageDither(image.pointer, rBpp, gBpp, bBpp, aBpp);
}

/// Flip image vertically.
void imageFlipVertical(Image image) {
  return library.ImageFlipVertical(image.pointer);
}

/// Flip image horizontally.
void imageFlipHorizontal(Image image) {
  return library.ImageFlipHorizontal(image.pointer);
}

/// Rotate image clockwise 90deg.
void imageRotateCW(Image image) {
  return library.ImageRotateCW(image.pointer);
}

/// Rotate image counter-clockwise 90deg.
void imageRotateCCW(Image image) {
  return library.ImageRotateCCW(image.pointer);
}

/// Modify image color: tint.
void imageColorTint(Image image, Color color) {
  return library.ImageColorTint(image.pointer, color.ref);
}

/// Modify image color: invert.
void imageColorInvert(Image image) {
  return library.ImageColorInvert(image.pointer);
}

/// Modify image color: grayscale.
void imageColorGrayscale(Image image) {
  return library.ImageColorGrayscale(image.pointer);
}

/// Modify image color: contrast (-100 to 100).
void imageColorContrast(Image image, double contrast) {
  return library.ImageColorContrast(image.pointer, contrast);
}

/// Modify image color: brightness (-255 to 255).
void imageColorBrightness(Image image, int brightness) {
  return library.ImageColorBrightness(image.pointer, brightness);
}

/// Modify image color: replace color.
void imageColorReplace(Image image, Color color, Color replace) {
  return library.ImageColorReplace(image.pointer, color.ref, replace.ref);
}

/// Load color data from image as a Color array (RGBA - 32bit).
List<Color> loadImageColors(Image image) {
  final result = library.LoadImageColors(image.ref);
  return [
    for (var i = 0; i < image.width * image.height; i++)
      Color.fromRef(result.elementAt(i).ref),
  ];
}

/// Load colors palette from image as a Color array (RGBA - 32bit).
List<Color> loadImagePalette(Image image, int maxPaletteSize) {
  final colorsCounter = malloc<Int32>(sizeOf<Int32>());

  final result = library.LoadImagePalette(
    image.ref,
    maxPaletteSize,
    colorsCounter,
  );
  return [
    for (var i = 0; i < colorsCounter.value; i++)
      Color.fromRef(result.elementAt(i).ref),
  ];
}

// TODO(wolfen): this
// /// Unload color data loaded with [loadImageColors].
// void unloadImageColors(List<Color> colors) {
//   return library.UnloadImageColors(colors);
// }

// TODO(wolfen): this
// /// Unload colors palette loaded with [loadImagePalette].
// void unloadImagePalette(List<Color> colors) {
//   return library.UnloadImagePalette(colors);
// }

/// Get image alpha border rectangle.
Rectangle getImageAlphaBorder(Image image, double threshold) {
  return Rectangle.fromRef(library.GetImageAlphaBorder(image.ref, threshold));
}

/// Get image pixel color at (x, y) position.
Color getImageColor(Image image, int x, int y) {
  return Color.fromRef(library.GetImageColor(image.ref, x, y));
}
