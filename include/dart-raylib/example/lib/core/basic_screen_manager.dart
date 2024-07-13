import 'package:raylib/raylib.dart';

/// Enum that showcases a GameScreen state.
enum GameScreen {
  /// Logo screen.
  logo,

  /// Title screen.
  title,

  /// Gameplay screen.
  gameplay,

  /// Ending screen.
  ending,
}

void main() {
  initLibrary(
    linux: './include/libraylib.so',
  );
  const screenWidth = 800;
  const screenHeight = 450;

  initWindow(
    screenWidth,
    screenHeight,
    'dart-raylib [core] example - basic screen manager',
  );

  var currentScreen = GameScreen.logo;

  var framesCounter = 0; // Useful to count frames

  setTargetFPS(60);

  while (!windowShouldClose()) {
    switch (currentScreen) {
      case GameScreen.logo:
        framesCounter++; // Count frames

        // Wait for 2 seconds (120 frames) before jumping to TITLE screen
        if (framesCounter > 120) {
          currentScreen = GameScreen.title;
        }
        break;
      case GameScreen.title:
        // Press enter to change to GAMEPLAY screen
        if (isKeyPressed(KeyboardKey.enter) || isGestureDetected(Gesture.tap)) {
          currentScreen = GameScreen.gameplay;
        }
        break;
      case GameScreen.gameplay:
        // Press enter to change to ENDING screen
        if (isKeyPressed(KeyboardKey.enter) || isGestureDetected(Gesture.tap)) {
          currentScreen = GameScreen.ending;
        }
        break;
      case GameScreen.ending:
        // Press enter to return to TITLE screen
        if (isKeyPressed(KeyboardKey.enter) || isGestureDetected(Gesture.tap)) {
          currentScreen = GameScreen.title;
        }
        break;
    }

    beginDrawing();

    clearBackground(Color.rayWhite);

    switch (currentScreen) {
      case GameScreen.logo:
        drawText('LOGO SCREEN', 20, 20, 40, Color.lightGray);
        drawText('WAIT for 2 SECONDS...', 290, 220, 20, Color.gray);
        break;
      case GameScreen.title:
        drawRectangle(0, 0, screenWidth, screenHeight, Color.green);
        drawText('TITLE SCREEN', 20, 20, 40, Color.darkGreen);
        drawText(
          'PRESS ENTER or TAP to JUMP to GAMEPLAY SCREEN',
          120,
          220,
          20,
          Color.darkGreen,
        );
        break;
      case GameScreen.gameplay:
        drawRectangle(0, 0, screenWidth, screenHeight, Color.purple);
        drawText('GAMEPLAY SCREEN', 20, 20, 40, Color.maroon);
        drawText(
          'PRESS ENTER or TAP to JUMP to ENDING SCREEN',
          130,
          220,
          20,
          Color.maroon,
        );
        break;
      case GameScreen.ending:
        drawRectangle(0, 0, screenWidth, screenHeight, Color.blue);
        drawText('ENDING SCREEN', 20, 20, 40, Color.darkBlue);
        drawText(
          'PRESS ENTER or TAP to RETURN to TITLE SCREEN',
          120,
          220,
          20,
          Color.darkBlue,
        );
        break;
    }

    endDrawing();
  }

  closeWindow();
}
