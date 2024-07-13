import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Mouse cursor.
enum MouseCursor {
  /// Default pointer shape.
  defaultCursor,

  /// Arrow shape.
  arrow,

  /// Text writing cursor shape.
  ibeam,

  /// Cross shape.
  crosshair,

  /// Pointing hand cursor.
  pointingHand,

  /// Horizontal resize/move arrow shape.
  resizeEW,

  /// Vertical resize/move arrow shape.
  resizeNS,

  /// Top-left to bottom-right diagonal resize/move arrow shape.
  resizeNWSE,

  /// The top-right to bottom-left diagonal resize/move arrow shape.
  resizeNESW,

  /// The omni-directional resize/move cursor shape.
  resizeAll,

  /// The operation-not-allowed shape.
  notAllowed,
}

/// Convert given enum to native value.
int mouseCursorToNative(MouseCursor cursor) {
  switch (cursor) {
    case MouseCursor.defaultCursor:
      return raylib.MouseCursor.DEFAULT;
    case MouseCursor.arrow:
      return raylib.MouseCursor.ARROW;
    case MouseCursor.ibeam:
      return raylib.MouseCursor.IBEAM;
    case MouseCursor.crosshair:
      return raylib.MouseCursor.CROSSHAIR;
    case MouseCursor.pointingHand:
      return raylib.MouseCursor.POINTING_HAND;
    case MouseCursor.resizeEW:
      return raylib.MouseCursor.RESIZE_EW;
    case MouseCursor.resizeNS:
      return raylib.MouseCursor.RESIZE_NS;
    case MouseCursor.resizeNWSE:
      return raylib.MouseCursor.RESIZE_NWSE;
    case MouseCursor.resizeNESW:
      return raylib.MouseCursor.RESIZE_NESW;
    case MouseCursor.resizeAll:
      return raylib.MouseCursor.RESIZE_ALL;
    case MouseCursor.notAllowed:
      return raylib.MouseCursor.NOT_ALLOWED;
  }
}
