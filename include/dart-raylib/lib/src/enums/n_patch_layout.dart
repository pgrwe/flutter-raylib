import 'package:raylib/src/generated_bindings.dart' as raylib;

/// N-patch layout.
enum NPatchLayout {
  /// Npatch layout: 3x3 tiles.
  ninePatch,

  /// Npatch layout: 1x3 tiles.
  threePatchVertical,

  /// Npatch layout: 3x1 tiles.
  threePatchHorizontal,
}

/// Convert given enum to native value.
int nPatchLayoutToNative(NPatchLayout layout) {
  switch (layout) {
    case NPatchLayout.ninePatch:
      return raylib.NPatchLayout.NINE_PATCH;
    case NPatchLayout.threePatchVertical:
      return raylib.NPatchLayout.THREE_PATCH_VERTICAL;
    case NPatchLayout.threePatchHorizontal:
      return raylib.NPatchLayout.THREE_PATCH_HORIZONTAL;
  }
}
