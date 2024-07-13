import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/library.dart';
import 'package:raylib/src/utils/string.dart' as string;

/// Initialize window and OpenGL context.
void initWindow(int screenWidth, int screenHeight, String title) {
  return library.InitWindow(
    screenWidth,
    screenHeight,
    string.toNative(title),
  );
}

/// Check if KEY_ESCAPE pressed or Close icon pressed.
bool windowShouldClose() {
  return library.WindowShouldClose();
}

/// Close window and unload OpenGL context.
void closeWindow() {
  return library.CloseWindow();
}

/// Check if window has been initialized successfully.
bool isWindowReady() {
  return library.IsWindowReady();
}

/// Check if window is currently fullscreen.
bool isWindowFullscreen() {
  return library.IsWindowFullscreen();
}

/// Check if window is currently hidden (only PLATFORM_DESKTOP).
bool isWindowHidden() {
  return library.IsWindowHidden();
}

/// Check if window is currently minimized (only PLATFORM_DESKTOP).
bool isWindowMinimized() {
  return library.IsWindowMinimized();
}

/// Check if window is currently maximized (only PLATFORM_DESKTOP).
bool isWindowMaximized() {
  return library.IsWindowMaximized();
}

/// Check if window is currently focused (only PLATFORM_DESKTOP).
bool isWindowFocused() {
  return library.IsWindowFocused();
}

/// Check if window has been resized last frame.
bool isWindowResized() {
  return library.IsWindowResized();
}

/// Check if one specific window flag is enabled.
bool isWindowState(int flag) {
  return library.IsWindowState(flag);
}

/// Set window configuration state using flags.
void setWindowState(int flags) {
  return library.SetWindowState(flags);
}

/// Clear window configuration state flags.
void clearWindowState(int flags) {
  return library.ClearWindowState(flags);
}

/// Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP).
void toggleFullscreen() {
  return library.ToggleFullscreen();
}

/// Set window state: maximized, if resizable (only PLATFORM_DESKTOP).
void maximizeWindow() {
  return library.MaximizeWindow();
}

/// Set window state: minimized, if resizable (only PLATFORM_DESKTOP).
void minimizeWindow() {
  return library.MinimizeWindow();
}

/// Set window state: not minimized/maximized (only PLATFORM_DESKTOP).
void restoreWindow() {
  return library.RestoreWindow();
}

/// Set icon for window (only PLATFORM_DESKTOP).
void setWindowIcon(raylib.Image image) {
  return library.SetWindowIcon(image);
}

/// Set title for window (only PLATFORM_DESKTOP).
void setWindowTitle(String title) {
  return library.SetWindowTitle(string.toNative(title));
}

/// Set window position on screen (only PLATFORM_DESKTOP).
void setWindowPosition(int x, int y) {
  return library.SetWindowPosition(x, y);
}

/// Set monitor for the current window (fullscreen mode).
void setWindowMonitor(int monitor) {
  return library.SetWindowMonitor(monitor);
}

/// Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE).
void setWindowMinSize(int width, int height) {
  return library.SetWindowMinSize(width, height);
}

/// Set window dimensions.
void setWindowSize(int width, int height) {
  return library.SetWindowSize(width, height);
}

// TODO(wolfen): this
/// Get native window handle.
// Pointer<void> getWindowHandle() {
//   return raylibInstance.GetWindowHandle();
// }

/// Get current screen width.
int getScreenWidth() {
  return library.GetScreenWidth();
}

/// Get current screen height.
int getScreenHeight() {
  return library.GetScreenHeight();
}

/// Get number of connected monitors.
int getMonitorCount() {
  return library.GetMonitorCount();
}

/// Get current connected monitor.
int getCurrentMonitor() {
  return library.GetCurrentMonitor();
}

/// Get specified monitor position.
Vector2 getMonitorPosition(int monitor) {
  return Vector2.fromRef(library.GetMonitorPosition(monitor));
}

/// Get specified monitor width (max available by monitor).
int getMonitorWidth(int monitor) {
  return library.GetMonitorWidth(monitor);
}

/// Get specified monitor height (max available by monitor).
int getMonitorHeight(int monitor) {
  return library.GetMonitorHeight(monitor);
}

/// Get specified monitor physical width in millimetres.
int getMonitorPhysicalWidth(int monitor) {
  return library.GetMonitorPhysicalWidth(monitor);
}

/// Get specified monitor physical height in millimetres.
int getMonitorPhysicalHeight(int monitor) {
  return library.GetMonitorPhysicalHeight(monitor);
}

/// Get specified monitor refresh rate
int getMonitorRefreshRate(int monitor) {
  return library.GetMonitorRefreshRate(monitor);
}

/// Get window position XY on monitor.
Vector2 getWindowPosition() {
  return Vector2.fromRef(library.GetWindowPosition());
}

/// Get window scale DPI factor.
Vector2 getWindowScaleDPI() {
  return Vector2.fromRef(library.GetWindowScaleDPI());
}

/// Get the human-readable, UTF-8 encoded name of the primary monitor.
String getMonitorName(int monitor) {
  return string.toDart(library.GetMonitorName(monitor));
}

/// Set clipboard text content.
void setClipboardText(String text) {
  return library.SetClipboardText(string.toNative(text));
}

/// Get clipboard text content.
String getClipboardText() {
  return string.toDart(library.GetClipboardText());
}
