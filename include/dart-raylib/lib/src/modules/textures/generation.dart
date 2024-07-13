import 'package:raylib/raylib.dart';
import 'package:raylib/src/library.dart';

/// Generate image: plain color.
Image genImageColor(
  int width,
  int height,
  Color color,
) {
  return Image.fromRef(library.GenImageColor(width, height, color.ref));
}

/// Generate image: vertical gradient.
Image genImageGradientV(
  int width,
  int height,
  Color top,
  Color bottom,
) {
  return Image.fromRef(
    library.GenImageGradientV(
      width,
      height,
      top.ref,
      bottom.ref,
    ),
  );
}

/// Generate image: horizontal gradient.
Image genImageGradientH(
  int width,
  int height,
  Color left,
  Color right,
) {
  return Image.fromRef(
    library.GenImageGradientH(
      width,
      height,
      left.ref,
      right.ref,
    ),
  );
}

/// Generate image: radial gradient.
Image genImageGradientRadial(
  int width,
  int height,
  double density,
  Color inner,
  Color outer,
) {
  return Image.fromRef(
    library.GenImageGradientRadial(
      width,
      height,
      density,
      inner.ref,
      outer.ref,
    ),
  );
}

/// Generate image: checked.
Image genImageChecked(
  int width,
  int height,
  int checksX,
  int checksY,
  Color col1,
  Color col2,
) {
  return Image.fromRef(
    library.GenImageChecked(
      width,
      height,
      checksX,
      checksY,
      col1.ref,
      col2.ref,
    ),
  );
}

/// Generate image: white noise.
Image genImageWhiteNoise(
  int width,
  int height,
  double factor,
) {
  return Image.fromRef(library.GenImageWhiteNoise(width, height, factor));
}

/// Generate image: cellular algorithm. Bigger tileSize means bigger cells.
Image genImageCellular(
  int width,
  int height,
  int tileSize,
) {
  return Image.fromRef(library.GenImageCellular(width, height, tileSize));
}
