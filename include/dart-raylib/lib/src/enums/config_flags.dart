import 'package:raylib/src/generated_bindings.dart' as raylib;

/// System/Window config flags.
///
/// NOTE: Every bit registers one state (use it with bit masks).
/// By default all flags are set to 0.
abstract class ConfigFlags {
  /// Set to try enabling V-Sync on GPU.
  static const int vsyncHint = raylib.ConfigFlags.VSYNC_HINT;

  /// Set to run program in fullscreen.
  static const int fullscreenMode = raylib.ConfigFlags.FULLSCREEN_MODE;

  /// Set to allow resizable window.
  static const int windowResizable = raylib.ConfigFlags.WINDOW_RESIZABLE;

  /// Set to disable window decoration (frame and buttons).
  static const int windowUndecorated = raylib.ConfigFlags.WINDOW_UNDECORATED;

  /// Set to hide window.
  static const int windowHidden = raylib.ConfigFlags.WINDOW_HIDDEN;

  /// Set to minimize window (iconify).
  static const int windowMinimized = raylib.ConfigFlags.WINDOW_MINIMIZED;

  /// Set to maximize window (expanded to monitor).
  static const int windowMaximized = raylib.ConfigFlags.WINDOW_MAXIMIZED;

  /// Set to window non focused.
  static const int windowUnfocused = raylib.ConfigFlags.WINDOW_UNFOCUSED;

  /// Set to window always on top.
  static const int windowTopmost = raylib.ConfigFlags.WINDOW_TOPMOST;

  /// Set to allow windows running while minimized.
  static const int windowAlwaysRun = raylib.ConfigFlags.WINDOW_ALWAYS_RUN;

  /// Set to allow transparent framebuffer.
  static const int windowTransparent = raylib.ConfigFlags.WINDOW_TRANSPARENT;

  /// Set to support HighDPI.
  static const int windowHighDPI = raylib.ConfigFlags.WINDOW_HIGHDPI;

  /// Set to try enabling MSAA 4X.
  static const int msaa4xHint = raylib.ConfigFlags.MSAA_4X_HINT;

  /// Set to try enabling interlaced video format (for V3D).
  static const int interlacedHint = raylib.ConfigFlags.INTERLACED_HINT;
}
