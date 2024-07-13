module: core

- [x] void InitWindow(int width, int height, const char *title);
- [x] bool WindowShouldClose(void);
- [x] void CloseWindow(void);
- [x] bool IsWindowReady(void);
- [x] bool IsWindowFullscreen(void);
- [x] bool IsWindowHidden(void);
- [x] bool IsWindowMinimized(void);
- [x] bool IsWindowMaximized(void);
- [x] bool IsWindowFocused(void);
- [x] bool IsWindowResized(void);
- [x] bool IsWindowState(unsigned int flag);
- [x] void SetWindowState(unsigned int flags);
- [x] void ClearWindowState(unsigned int flags);
- [x] void ToggleFullscreen(void);
- [x] void MaximizeWindow(void);
- [x] void MinimizeWindow(void);
- [x] void RestoreWindow(void);
- [x] void SetWindowIcon(Image image);
- [x] void SetWindowTitle(const char *title);
- [x] void SetWindowPosition(int x, int y);
- [x] void SetWindowMonitor(int monitor);
- [x] void SetWindowMinSize(int width, int height);
- [x] void SetWindowSize(int width, int height);
- [ ] void *GetWindowHandle(void);
- [x] int GetScreenWidth(void);
- [x] int GetScreenHeight(void);
- [x] int GetMonitorCount(void);
- [x] int GetCurrentMonitor(void);
- [x] Vector2 GetMonitorPosition(int monitor);
- [x] int GetMonitorWidth(int monitor);
- [x] int GetMonitorHeight(int monitor);
- [x] int GetMonitorPhysicalWidth(int monitor);
- [x] int GetMonitorPhysicalHeight(int monitor);
- [x] int GetMonitorRefreshRate(int monitor);
- [x] Vector2 GetWindowPosition(void);
- [x] Vector2 GetWindowScaleDPI(void);
- [x] const char *GetMonitorName(int monitor);
- [x] void SetClipboardText(const char *text);
- [x] const char *GetClipboardText(void);

- [x] void ShowCursor(void);
- [x] void HideCursor(void);
- [x] bool IsCursorHidden(void);
- [x] void EnableCursor(void);
- [x] void DisableCursor(void);
- [x] bool IsCursorOnScreen(void);

- [x] void ClearBackground(Color color);
- [x] void BeginDrawing(void);
- [x] void EndDrawing(void);
- [x] void BeginMode2D(Camera2D camera);
- [x] void EndMode2D(void);
- [x] void BeginMode3D(Camera3D camera);
- [x] void EndMode3D(void);
- [x] void BeginTextureMode(RenderTexture2D target);
- [x] void EndTextureMode(void);
- [x] void BeginShaderMode(Shader shader);
- [x] void EndShaderMode(void);
- [x] void BeginBlendMode(int mode);
- [x] void EndBlendMode(void);
- [x] void BeginScissorMode(int x, int y, int width, int height);
- [x] void EndScissorMode(void);
- [ ] void BeginVrStereoMode(VrStereoConfig config);
- [ ] void EndVrStereoMode(void);

- [ ] VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device);
- [ ] void UnloadVrStereoConfig(VrStereoConfig config);

- [x] Shader LoadShader(const char *vsFileName, const char *fsFileName);
- [x] Shader LoadShaderFromMemory(const char *vsCode, const char *fsCode);
- [x] int GetShaderLocation(Shader shader, const char *uniformName);
- [x] int GetShaderLocationAttrib(Shader shader, const char *attribName);
- [ ] void SetShaderValue(Shader shader, int locIndex, const void *value, int uniformType);
- [ ] void SetShaderValueV(Shader shader, int locIndex, const void *value, int uniformType, int count);
- [x] void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);
- [x] void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture); 
- [x] void UnloadShader(Shader shader);

- [x] Ray GetMouseRay(Vector2 mousePosition, Camera camera);
- [x] Matrix GetCameraMatrix(Camera camera);
- [x] Matrix GetCameraMatrix2D(Camera2D camera);
- [x] Vector2 GetWorldToScreen(Vector3 position, Camera camera);
- [x] Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height); 
- [x] Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);
- [x] Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);

- [x] void SetTargetFPS(int fps);
- [x] int GetFPS(void);
- [x] float GetFrameTime(void);
- [x] double GetTime(void);

- [x] void TakeScreenshot(const char *fileName);
- [x] void SetConfigFlags(unsigned int flags);

- [x] void TraceLog(int logLevel, const char *text, ...);
- [x] void SetTraceLogLevel(int logLevel);

- [ ] void SetTraceLogCallback(TraceLogCallback callback);
- [ ] void SetLoadFileDataCallback(LoadFileDataCallback callback);
- [ ] void SetSaveFileDataCallback(SaveFileDataCallback callback);
- [ ] void SetLoadFileTextCallback(LoadFileTextCallback callback);

- [ ] void SetSaveFileTextCallback(SaveFileTextCallback callback);

- [ ] unsigned char *CompressData(unsigned char *data, int dataLength, int *compDataLength);
- [ ] unsigned char *DecompressData(unsigned char *compData, int compDataLength, int *dataLength);
- [ ] char *EncodeDataBase64(const unsigned char *data, int dataLength, int *outputLength);
- [ ] unsigned char *DecodeDataBase64(unsigned char *data, int *outputLength);

- [ ] bool SaveStorageValue(unsigned int position, int value);
- [ ] int LoadStorageValue(unsigned int position);

- [ ] void OpenURL(const char *url);

- [x] bool IsKeyPressed(int key);
- [x] bool IsKeyDown(int key);
- [x] bool IsKeyReleased(int key);
- [x] bool IsKeyUp(int key);
- [x] void SetExitKey(int key);
- [x] int GetKeyPressed(void);
- [x] int GetCharPressed(void);

- [x] bool IsGamepadAvailable(int gamepad);
- [x] const char *GetGamepadName(int gamepad);
- [x] bool IsGamepadButtonPressed(int gamepad, int button);
- [x] bool IsGamepadButtonDown(int gamepad, int button);
- [x] bool IsGamepadButtonReleased(int gamepad, int button);
- [x] bool IsGamepadButtonUp(int gamepad, int button);
- [x] int GetGamepadButtonPressed(void);
- [x] int GetGamepadAxisCount(int gamepad);
- [x] float GetGamepadAxisMovement(int gamepad, int axis);
- [x] int SetGamepadMappings(const char *mappings); 

- [x] bool IsMouseButtonPressed(int button);
- [x] bool IsMouseButtonDown(int button);
- [x] bool IsMouseButtonReleased(int button);
- [x] bool IsMouseButtonUp(int button);
- [x] int GetMouseX(void);
- [x] int GetMouseY(void);
- [x] Vector2 GetMousePosition(void);
- [x] Vector2 GetMouseDelta(void);
- [x] void SetMousePosition(int x, int y);
- [x] void SetMouseOffset(int offsetX, int offsetY);
- [x] void SetMouseScale(float scaleX, float scaleY);
- [x] float GetMouseWheelMove(void);
- [x] void SetMouseCursor(int cursor);

- [x] int GetTouchX(void);
- [x] int GetTouchY(void);
- [x] Vector2 GetTouchPosition(int index);
- [x] int GetTouchPointId(int index);
- [x] int GetTouchPointCount(void);

- [x] void SetGesturesEnabled(unsigned int flags);
- [x] bool IsGestureDetected(int gesture);
- [x] int GetGestureDetected(void);
- [x] float GetGestureHoldDuration(void);
- [x] Vector2 GetGestureDragVector(void);
- [x] float GetGestureDragAngle(void);
- [x] Vector2 GetGesturePinchVector(void);
- [x] float GetGesturePinchAngle(void);

- [x] void SetCameraMode(Camera camera, int mode);
- [x] void UpdateCamera(Camera *camera);

- [x] void SetCameraPanControl(int keyPan);
- [x] void SetCameraAltControl(int keyAlt);
- [x] void SetCameraSmoothZoomControl(int keySmoothZoom);
- [x] void SetCameraMoveControls(int keyFront, int keyBack, int keyRight, int keyLeft, int keyUp, int keyDown); 

module: shapes

- [x] void SetShapesTexture(Texture2D texture, Rectangle source);

- [x] void DrawPixel(int posX, int posY, Color color);
- [x] void DrawPixelV(Vector2 position, Color color);
- [x] void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);
- [x] void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);
- [x] void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);
- [x] void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);
- [x] void DrawLineBezierQuad(Vector2 startPos, Vector2 endPos, Vector2 controlPos, float thick, Color color);
- [x] void DrawLineBezierCubic(Vector2 startPos, Vector2 endPos, Vector2 startControlPos, Vector2 endControlPos, float thick, Color color); 
- [x] void DrawLineStrip(Vector2 *points, int pointsCount, Color color);
- [x] void DrawCircle(int centerX, int centerY, float radius, Color color);
- [x] void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);
- [x] void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color); 
- [x] void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);
- [x] void DrawCircleV(Vector2 center, float radius, Color color);
- [x] void DrawCircleLines(int centerX, int centerY, float radius, Color color);
- [x] void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);
- [x] void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);
- [x] void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color); 
- [x] void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);
- [x] void DrawRectangle(int posX, int posY, int width, int height, Color color);
- [x] void DrawRectangleV(Vector2 position, Vector2 size, Color color);
- [x] void DrawRectangleRec(Rectangle rec, Color color);
- [x] void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);
- [x] void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2); 
- [x] void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2); 
- [x] void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);
- [x] void DrawRectangleLines(int posX, int posY, int width, int height, Color color);
- [x] void DrawRectangleLinesEx(Rectangle rec, int lineThick, Color color);
- [x] void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);
- [x] void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, int lineThick, Color color); 
- [x] void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
- [x] void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);
- [x] void DrawTriangleFan(Vector2 *points, int pointsCount, Color color);
- [x] void DrawTriangleStrip(Vector2 *points, int pointsCount, Color color);
- [x] void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);
- [x] void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);
- [x] void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color); 

- [x] bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);
- [x] bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);
- [x] bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);
- [x] bool CheckCollisionPointRec(Vector2 point, Rectangle rec);
- [x] bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);
- [x] bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);
- [x] bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint); 
- [x] bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);
- [x] Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);

module: textures

- [x] Image LoadImage(const char *fileName);
- [x] Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);
- [x] Image LoadImageAnim(const char *fileName, int *frames);
- [x] Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);
- [x] Image LoadImageFromTexture(Texture2D texture);
- [x] Image LoadImageFromScreen(void);
- [x] void UnloadImage(Image image);
- [x] bool ExportImage(Image image, const char *fileName);
- [x] bool ExportImageAsCode(Image image, const char *fileName);

- [x] Image GenImageColor(int width, int height, Color color);
- [x] Image GenImageGradientV(int width, int height, Color top, Color bottom);
- [x] Image GenImageGradientH(int width, int height, Color left, Color right);
- [x] Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);
- [x] Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);
- [x] Image GenImageWhiteNoise(int width, int height, float factor);
- [x] Image GenImageCellular(int width, int height, int tileSize);

- [x] Image ImageCopy(Image image);
- [x] Image ImageFromImage(Image image, Rectangle rec);
- [x] Image ImageText(const char *text, int fontSize, Color color);
- [x] Image ImageTextEx(Font font, const char *text, float fontSize, float spacing, Color tint);
- [x] void ImageFormat(Image *image, int newFormat);
- [x] void ImageToPOT(Image *image, Color fill);
- [x] void ImageCrop(Image *image, Rectangle crop);
- [x] void ImageAlphaCrop(Image *image, float threshold);
- [x] void ImageAlphaClear(Image *image, Color color, float threshold);
- [x] void ImageAlphaMask(Image *image, Image alphaMask);
- [x] void ImageAlphaPremultiply(Image *image);
- [x] void ImageResize(Image *image, int newWidth, int newHeight);
- [x] void ImageResizeNN(Image *image, int newWidth,int newHeight);
- [x] void ImageResizeCanvas(Image *image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill);
- [x] void ImageMipmaps(Image *image);
- [x] void ImageDither(Image *image, int rBpp, int gBpp, int bBpp, int aBpp);
- [x] void ImageFlipVertical(Image *image);
- [x] void ImageFlipHorizontal(Image *image);
- [x] void ImageRotateCW(Image *image);
- [x] void ImageRotateCCW(Image *image);
- [x] void ImageColorTint(Image *image, Color color);
- [x] void ImageColorInvert(Image *image);
- [x] void ImageColorGrayscale(Image *image);
- [x] void ImageColorContrast(Image *image, float contrast);
- [x] void ImageColorBrightness(Image *image, int brightness);
- [x] void ImageColorReplace(Image *image, Color color, Color replace);
- [x] Color *LoadImageColors(Image image);
- [x] Color *LoadImagePalette(Image image, int maxPaletteSize, int *colorsCount);
- [ ] void UnloadImageColors(Color *colors);
- [ ] void UnloadImagePalette(Color *colors);
- [x] Rectangle GetImageAlphaBorder(Image image, float threshold);
- [x] Color GetImageColor(Image image, int x, int y);

- [x] void ImageClearBackground(Image *dst, Color color);
- [x] void ImageDrawPixel(Image *dst, int posX, int posY, Color color);
- [x] void ImageDrawPixelV(Image *dst, Vector2 position, Color color);
- [x] void ImageDrawLine(Image *dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color); 
- [x] void ImageDrawLineV(Image *dst, Vector2 start, Vector2 end, Color color);
- [x] void ImageDrawCircle(Image *dst, int centerX, int centerY, int radius, Color color);
- [x] void ImageDrawCircleV(Image *dst, Vector2 center, int radius, Color color);
- [x] void ImageDrawRectangle(Image *dst, int posX, int posY, int width, int height, Color color);
- [x] void ImageDrawRectangleV(Image *dst, Vector2 position, Vector2 size, Color color);
- [x] void ImageDrawRectangleRec(Image *dst, Rectangle rec, Color color);
- [x] void ImageDrawRectangleLines(Image *dst, Rectangle rec, int thick, Color color);
- [x] void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);
- [x] void ImageDrawText(Image *dst, const char *text, int posX, int posY, int fontSize, Color color);
- [x] void ImageDrawTextEx(Image *dst, Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint); 

- [x] Texture2D LoadTexture(const char *fileName);
- [x] Texture2D LoadTextureFromImage(Image image);
- [x] TextureCubemap LoadTextureCubemap(Image image, int layout);
- [x] RenderTexture2D LoadRenderTexture(int width, int height);
- [x] void UnloadTexture(Texture2D texture);
- [x] void UnloadRenderTexture(RenderTexture2D target);
- [ ] void UpdateTexture(Texture2D texture, const void *pixels);
- [ ] void UpdateTextureRec(Texture2D texture, Rectangle rec, const void *pixels);

- [ ] void GenTextureMipmaps(Texture2D *texture);
- [x] void SetTextureFilter(Texture2D texture, int filter);
- [x] void SetTextureWrap(Texture2D texture, int wrap);

- [x] void DrawTexture(Texture2D texture, int posX, int posY, Color tint);
- [x] void DrawTextureV(Texture2D texture, Vector2 position, Color tint);
- [x] void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);
- [x] void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);
- [x] void DrawTextureQuad(Texture2D texture, Vector2 tiling, Vector2 offset, Rectangle quad, Color tint);
- [x] void DrawTextureTiled(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, float scale, Color tint);
- [x] void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);
- [x] void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint);
- [x] void DrawTexturePoly(Texture2D texture, Vector2 center, Vector2 *points, Vector2 *texcoords, int pointsCount, Color tint);

- [x] Color Fade(Color color, float alpha);
- [x] int ColorToInt(Color color);
- [x] Vector4 ColorNormalize(Color color);
- [x] Color ColorFromNormalized(Vector4 normalized);
- [x] Vector3 ColorToHSV(Color color);
- [x] Color ColorFromHSV(float hue, float saturation, float value);
- [x] Color ColorAlpha(Color color, float alpha);
- [x] Color ColorAlphaBlend(Color dst, Color src, Color tint);
- [x] Color GetColor(unsigned int hexValue);
- [x] Color GetPixelColor(void *srcPtr, int format);
- [ ] void SetPixelColor(void *dstPtr, Color color, int format);
- [x] int GetPixelDataSize(int width, int height, int format);

module: text

- [x] Font GetFontDefault(void);
- [x] Font LoadFont(const char *fileName);
- [x] Font LoadFontEx(const char *fileName, int fontSize, int *fontChars, int glyphCount);
- [x] Font LoadFontFromImage(Image image, Color key, int firstChar);
- [x] Font LoadFontFromMemory(const char *fileType, const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount); 
- [x] GlyphInfo *LoadFontData(const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount, int type);
- [ ] Image GenImageFontAtlas(const GlyphInfo *chars, Rectangle **recs, int glyphCount, int fontSize, int padding, int packMethod);
- [x] void UnloadFontData(GlyphInfo *chars, int glyphCount);
- [x] void UnloadFont(Font font);

- [x] void DrawFPS(int posX, int posY);
- [x] void DrawText(const char *text, int posX, int posY, int fontSize, Color color);
- [x] void DrawTextEx(Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);
- [x] void DrawTextPro(Font font, const char *text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint); 
- [x] void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint); 

- [x] int MeasureText(const char *text, int fontSize);
- [x] Vector2 MeasureTextEx(Font font, const char *text, float fontSize, float spacing);
- [x] int GetGlyphIndex(Font font, int codepoint);
- [x] GlyphInfo GetGlyphInfo(Font font, int codepoint);
- [x] Rectangle GetGlyphAtlasRec(Font font, int codepoint);

module: models

- [x] void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);
- [x] void DrawPoint3D(Vector3 position, Color color);
- [x] void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color); 
- [x] void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);
- [x] void DrawTriangleStrip3D(Vector3 *points, int pointsCount, Color color);
- [x] void DrawCube(Vector3 position, float width, float height, float length, Color color);
- [x] void DrawCubeV(Vector3 position, Vector3 size, Color color);
- [x] void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);
- [x] void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);
- [x] void DrawCubeTexture(Texture2D texture, Vector3 position, float width, float height, float length, Color color); 
- [x] void DrawCubeTextureRec(Texture2D texture, Rectangle source, Vector3 position, float width, float height, float length, Color color); 
- [x] void DrawSphere(Vector3 centerPos, float radius, Color color);
- [x] void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);
- [x] void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);
- [x] void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);
- [x] void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);
- [x] void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);
- [x] void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color); 
- [x] void DrawPlane(Vector3 centerPos, Vector2 size, Color color);
- [x] void DrawRay(Ray ray, Color color);
- [x] void DrawGrid(int slices, float spacing);

- [x] Model LoadModel(const char *fileName);
- [x] Model LoadModelFromMesh(Mesh mesh);
- [x] void UnloadModel(Model model);
- [x] void UnloadModelKeepMeshes(Model model);
- [x] BoundingBox GetModelBoundingBox(Model model);

- [x] void DrawModel(Model model, Vector3 position, float scale, Color tint);
- [x] void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint); 
- [x] void DrawModelWires(Model model, Vector3 position, float scale, Color tint);
- [x] void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint); 
- [x] void DrawBoundingBox(BoundingBox box, Color color);
- [x] void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint);
- [x] void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint); 
- [x] void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint); 

- [x] void UploadMesh(Mesh *mesh, bool dynamic);
- [x] void UpdateMeshBuffer(Mesh mesh, int index, void *data, int dataSize, int offset);
- [x] void UnloadMesh(Mesh mesh);
- [x] void DrawMesh(Mesh mesh, Material material, Matrix transform);
- [x] void DrawMeshInstanced(Mesh mesh, Material material, Matrix *transforms, int instances);
- [x] bool ExportMesh(Mesh mesh, const char *fileName);
- [x] BoundingBox GetMeshBoundingBox(Mesh mesh);
- [x] void GenMeshTangents(Mesh *mesh);
- [x] void GenMeshBinormals(Mesh *mesh);

- [x] Mesh GenMeshPoly(int sides, float radius);
- [x] Mesh GenMeshPlane(float width, float length, int resX, int resZ);
- [x] Mesh GenMeshCube(float width, float height, float length);
- [x] Mesh GenMeshSphere(float radius, int rings, int slices);
- [x] Mesh GenMeshHemiSphere(float radius, int rings, int slices);
- [x] Mesh GenMeshCylinder(float radius, float height, int slices);
- [x] Mesh GenMeshCone(float radius, float height, int slices);
- [x] Mesh GenMeshTorus(float radius, float size, int radSeg, int sides);
- [x] Mesh GenMeshKnot(float radius, float size, int radSeg, int sides);
- [x] Mesh GenMeshHeightmap(Image heightmap, Vector3 size);
- [x] Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);

- [x] Material *LoadMaterials(const char *fileName, int *materialCount);
- [x] Material LoadMaterialDefault(void);
- [x] void UnloadMaterial(Material material);
- [ ] void SetMaterialTexture(Material *material, int mapType, Texture2D texture);
- [ ] void SetModelMeshMaterial(Model *model, int meshId, int materialId);

- [x] ModelAnimation *LoadModelAnimations(const char *fileName, unsigned int *animCount);
- [x] void UpdateModelAnimation(Model model, ModelAnimation anim, int frame);
- [x] void UnloadModelAnimation(ModelAnimation anim);
- [x] void UnloadModelAnimations(ModelAnimation* animations, unsigned int count);
- [x] bool IsModelAnimationValid(Model model, ModelAnimation anim);

- [x] bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2);
- [x] bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);
- [x] bool CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius);
- [x] RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius);
- [x] RayCollision GetRayCollisionBox(Ray ray, BoundingBox box);
- [x] RayCollision GetRayCollisionModel(Ray ray, Model model);
- [x] RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);
- [x] RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);
- [x] RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);

module: audio

- [ ] void InitAudioDevice(void);
- [ ] void CloseAudioDevice(void);
- [ ] bool IsAudioDeviceReady(void);
- [ ] void SetMasterVolume(float volume);

- [ ] Wave LoadWave(const char *fileName);
- [ ] Wave LoadWaveFromMemory(const char *fileType, const unsigned char *fileData, int dataSize); 
- [ ] Sound LoadSound(const char *fileName);
- [ ] Sound LoadSoundFromWave(Wave wave);
- [ ] void UpdateSound(Sound sound, const void *data, int samplesCount);
- [ ] void UnloadWave(Wave wave);
- [ ] void UnloadSound(Sound sound);
- [ ] bool ExportWave(Wave wave, const char *fileName);
- [ ] bool ExportWaveAsCode(Wave wave, const char *fileName);

- [ ] void PlaySound(Sound sound);
- [ ] void StopSound(Sound sound);
- [ ] void PauseSound(Sound sound);
- [ ] void ResumeSound(Sound sound);
- [ ] void PlaySoundMulti(Sound sound);
- [ ] void StopSoundMulti(void);
- [ ] int GetSoundsPlaying(void);
- [ ] bool IsSoundPlaying(Sound sound);
- [ ] void SetSoundVolume(Sound sound, float volume);
- [ ] void SetSoundPitch(Sound sound, float pitch);
- [ ] void WaveFormat(Wave *wave, int sampleRate, int sampleSize, int channels);
- [ ] Wave WaveCopy(Wave wave);
- [ ] void WaveCrop(Wave *wave, int initSample, int finalSample);
- [ ] float *LoadWaveSamples(Wave wave);
- [ ] void UnloadWaveSamples(float *samples);

- [ ] Music LoadMusicStream(const char *fileName);
- [ ] Music LoadMusicStreamFromMemory(const char *fileType, unsigned char *data, int dataSize); 
- [ ] void UnloadMusicStream(Music music);
- [ ] void PlayMusicStream(Music music);
- [ ] bool IsMusicStreamPlaying(Music music);
- [ ] void UpdateMusicStream(Music music);
- [ ] void StopMusicStream(Music music);
- [ ] void PauseMusicStream(Music music);
- [ ] void ResumeMusicStream(Music music);
- [ ] void SeekMusicStream(Music music, float position);
- [ ] void SetMusicVolume(Music music, float volume);
- [ ] void SetMusicPitch(Music music, float pitch);
- [ ] float GetMusicTimeLength(Music music);
- [ ] float GetMusicTimePlayed(Music music);

- [ ] AudioStream InitAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels); 
- [ ] void UpdateAudioStream(AudioStream stream, const void *data, int samplesCount); 
- [ ] void CloseAudioStream(AudioStream stream);
- [ ] bool IsAudioStreamProcessed(AudioStream stream);
- [ ] void PlayAudioStream(AudioStream stream);
- [ ] void PauseAudioStream(AudioStream stream);
- [ ] void ResumeAudioStream(AudioStream stream);
- [ ] bool IsAudioStreamPlaying(AudioStream stream);
- [ ] void StopAudioStream(AudioStream stream);
- [ ] void SetAudioStreamVolume(AudioStream stream, float volume);
- [ ] void SetAudioStreamPitch(AudioStream stream, float pitch);
- [ ] void SetAudioStreamBufferSizeDefault(int size);

structs

- [x] struct Vector2;
- [x] struct Vector3;
- [x] struct Vector4;
- [x] struct Quaternion;
- [x] struct Matrix;
- [x] struct Color;
- [x] struct Rectangle;

- [x] struct Image;

- [x] struct Texture;

- [x] struct RenderTexture;
- [x] struct NPatchInfo;
- [x] struct GlyphInfo;
- [x] struct Font;

- [x] struct Camera;
- [x] struct Camera2D;
- [x] struct Mesh;
- [x] struct Shader;
- [x] struct MaterialMap;
- [x] struct Material;
- [x] struct Model;
- [x] struct Transform;
- [x] struct BoneInfo;
- [x] struct ModelAnimation;
- [x] struct Ray;
- [x] struct RayCollision;
- [x] struct BoundingBox;

- [ ] struct Wave;
- [ ] struct Sound;
- [ ] struct Music;
- [ ] struct AudioStream;

- [ ] struct VrDeviceInfo;
- [ ] struct VrStereoConfig;