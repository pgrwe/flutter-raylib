import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Cubemap layouts.
enum CubemapLayout {
  /// Automatically detect layout type.
  autoDetect,

  /// Layout is defined by a vertical line with faces.
  lineVertical,

  /// Layout is defined by an horizontal line with faces.
  lineHorizontal,

  /// Layout is defined by a 3x4 cross with cubemap faces.
  crossThreeByFour,

  /// Layout is defined by a 4x3 cross with cubemap faces.
  crossFourByThree,

  /// Layout is defined by a panorama image (equirectangular map).
  panorama,
}

/// Convert given enum to native value.
int cubemapLayoutToNative(CubemapLayout layout) {
  switch (layout) {
    case CubemapLayout.autoDetect:
      return raylib.CubemapLayout.AUTO_DETECT;
    case CubemapLayout.lineVertical:
      return raylib.CubemapLayout.LINE_VERTICAL;
    case CubemapLayout.lineHorizontal:
      return raylib.CubemapLayout.LINE_HORIZONTAL;
    case CubemapLayout.crossThreeByFour:
      return raylib.CubemapLayout.CROSS_THREE_BY_FOUR;
    case CubemapLayout.crossFourByThree:
      return raylib.CubemapLayout.CROSS_FOUR_BY_THREE;
    case CubemapLayout.panorama:
      return raylib.CubemapLayout.PANORAMA;
  }
}
