import 'package:raylib/raylib.dart';
import 'package:raylib/src/classes/camera_2d.dart';
import 'package:raylib/src/enums/blend_mode.dart';
import 'package:raylib/src/library.dart';

/// Set background color (framebuffer clear color).
void clearBackground(Color color) {
  return library.ClearBackground(color.ref);
}

/// Setup canvas (framebuffer) to start drawing.
void beginDrawing() {
  return library.BeginDrawing();
}

/// End canvas drawing and swap buffers (double buffering).
void endDrawing() {
  return library.EndDrawing();
}

/// Begin 2D mode with custom camera (2D).
void beginMode2D(Camera2D camera) {
  return library.BeginMode2D(camera.ref);
}

/// Ends 2D mode with custom camera.
void endMode2D() {
  return library.EndMode2D();
}

/// Begin 3D mode with custom camera (3D).
void beginMode3D(Camera3D camera) {
  return library.BeginMode3D(camera.ref);
}

/// Ends 3D mode and returns to default 2D orthographic mode.
void endMode3D() {
  return library.EndMode3D();
}

/// Begin drawing to render texture.
void beginTextureMode(RenderTexture2D target) {
  return library.BeginTextureMode(target.ref);
}

/// Ends drawing to render texture.
void endTextureMode() {
  return library.EndTextureMode();
}

/// Begin custom shader drawing.
void beginShaderMode(Shader shader) {
  return library.BeginShaderMode(shader.ref);
}

/// End custom shader drawing (use default shader).
void endShaderMode() {
  return library.EndShaderMode();
}

/// Begin blending mode (alpha, additive, multiplied, subtract, custom).
void beginBlendMode(BlendMode mode) {
  return library.BeginBlendMode(blendModeToNative(mode));
}

/// End blending mode (reset to default: alpha blending).
void endBlendMode() {
  return library.EndBlendMode();
}

/// Begin scissor mode (define screen area for following drawing).
void beginScissorMode(int x, int y, int width, int height) {
  return library.BeginScissorMode(x, y, width, height);
}

/// End scissor mode.
void endScissorMode() {
  return library.EndScissorMode();
}

// TODO(wolfen): this
/// Begin stereo rendering (requires VR simulator).
// void BeginVrStereoMode(VrStereoConfig config) {
//   return raylibInstance.BeginVrStereoMode(config);
// }

// TODO(wolfen): this
/// End stereo rendering (requires VR simulator).
// void EndVrStereoMode() {
//   return raylibInstance.EndVrStereoMode();
// }
