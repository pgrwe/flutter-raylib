import 'package:raylib/raylib.dart';
import 'package:raylib/src/enums/keyboard_key.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/library.dart';

/// Check if a key has been pressed once.
bool isKeyPressed(KeyboardKey key) {
  return library.IsKeyPressed(keyboardKeyToNative(key));
}

/// Check if a key is being pressed.
bool isKeyDown(KeyboardKey key) {
  return library.IsKeyDown(keyboardKeyToNative(key));
}

/// Check if a key has been released once.
bool isKeyReleased(KeyboardKey key) {
  return library.IsKeyReleased(keyboardKeyToNative(key));
}

/// Check if a key is NOT being pressed.
bool isKeyUp(KeyboardKey key) {
  return library.IsKeyUp(keyboardKeyToNative(key));
}

/// Set a custom key to exit program (default is [KeyboardKey.escape]).
void setExitKey(KeyboardKey key) {
  return library.SetExitKey(keyboardKeyToNative(key));
}

/// Get key pressed (keycode), call it multiple times for keys queued,
/// returns 0 when the queue is empty.
KeyboardKey getKeyPressed() {
  final key = library.GetKeyPressed();

  switch (key) {
    case raylib.KeyboardKey.NULL:
      return KeyboardKey.none;
    case raylib.KeyboardKey.APOSTROPHE:
      return KeyboardKey.apostrophe;
    case raylib.KeyboardKey.COMMA:
      return KeyboardKey.comma;
    case raylib.KeyboardKey.MINUS:
      return KeyboardKey.minus;
    case raylib.KeyboardKey.PERIOD:
      return KeyboardKey.period;
    case raylib.KeyboardKey.SLASH:
      return KeyboardKey.slash;
    case raylib.KeyboardKey.ZERO:
      return KeyboardKey.zero;
    case raylib.KeyboardKey.ONE:
      return KeyboardKey.one;
    case raylib.KeyboardKey.TWO:
      return KeyboardKey.two;
    case raylib.KeyboardKey.THREE:
      return KeyboardKey.three;
    case raylib.KeyboardKey.FOUR:
      return KeyboardKey.four;
    case raylib.KeyboardKey.FIVE:
      return KeyboardKey.five;
    case raylib.KeyboardKey.SIX:
      return KeyboardKey.six;
    case raylib.KeyboardKey.SEVEN:
      return KeyboardKey.seven;
    case raylib.KeyboardKey.EIGHT:
      return KeyboardKey.eight;
    case raylib.KeyboardKey.NINE:
      return KeyboardKey.nine;
    case raylib.KeyboardKey.SEMICOLON:
      return KeyboardKey.semicolon;
    case raylib.KeyboardKey.EQUAL:
      return KeyboardKey.equal;
    case raylib.KeyboardKey.A:
      return KeyboardKey.a;
    case raylib.KeyboardKey.B:
      return KeyboardKey.b;
    case raylib.KeyboardKey.C:
      return KeyboardKey.c;
    case raylib.KeyboardKey.D:
      return KeyboardKey.d;
    case raylib.KeyboardKey.E:
      return KeyboardKey.e;
    case raylib.KeyboardKey.F:
      return KeyboardKey.f;
    case raylib.KeyboardKey.G:
      return KeyboardKey.g;
    case raylib.KeyboardKey.H:
      return KeyboardKey.h;
    case raylib.KeyboardKey.I:
      return KeyboardKey.i;
    case raylib.KeyboardKey.J:
      return KeyboardKey.j;
    case raylib.KeyboardKey.K:
      return KeyboardKey.k;
    case raylib.KeyboardKey.L:
      return KeyboardKey.l;
    case raylib.KeyboardKey.M:
      return KeyboardKey.m;
    case raylib.KeyboardKey.N:
      return KeyboardKey.n;
    case raylib.KeyboardKey.O:
      return KeyboardKey.o;
    case raylib.KeyboardKey.P:
      return KeyboardKey.p;
    case raylib.KeyboardKey.Q:
      return KeyboardKey.q;
    case raylib.KeyboardKey.R:
      return KeyboardKey.r;
    case raylib.KeyboardKey.S:
      return KeyboardKey.s;
    case raylib.KeyboardKey.T:
      return KeyboardKey.t;
    case raylib.KeyboardKey.U:
      return KeyboardKey.u;
    case raylib.KeyboardKey.V:
      return KeyboardKey.v;
    case raylib.KeyboardKey.W:
      return KeyboardKey.w;
    case raylib.KeyboardKey.X:
      return KeyboardKey.x;
    case raylib.KeyboardKey.Y:
      return KeyboardKey.y;
    case raylib.KeyboardKey.Z:
      return KeyboardKey.z;
    case raylib.KeyboardKey.LEFT_BRACKET:
      return KeyboardKey.leftBracket;
    case raylib.KeyboardKey.BACKSLASH:
      return KeyboardKey.backSlash;
    case raylib.KeyboardKey.RIGHT_BRACKET:
      return KeyboardKey.rightBracket;
    case raylib.KeyboardKey.GRAVE:
      return KeyboardKey.grave;
    case raylib.KeyboardKey.SPACE:
      return KeyboardKey.space;
    case raylib.KeyboardKey.ESCAPE:
      return KeyboardKey.escape;
    case raylib.KeyboardKey.ENTER:
      return KeyboardKey.enter;
    case raylib.KeyboardKey.TAB:
      return KeyboardKey.tab;
    case raylib.KeyboardKey.BACKSPACE:
      return KeyboardKey.backspace;
    case raylib.KeyboardKey.INSERT:
      return KeyboardKey.insert;
    case raylib.KeyboardKey.DELETE:
      return KeyboardKey.delete;
    case raylib.KeyboardKey.RIGHT:
      return KeyboardKey.right;
    case raylib.KeyboardKey.LEFT:
      return KeyboardKey.left;
    case raylib.KeyboardKey.DOWN:
      return KeyboardKey.down;
    case raylib.KeyboardKey.UP:
      return KeyboardKey.up;
    case raylib.KeyboardKey.PAGE_UP:
      return KeyboardKey.pageUp;
    case raylib.KeyboardKey.PAGE_DOWN:
      return KeyboardKey.pageDown;
    case raylib.KeyboardKey.HOME:
      return KeyboardKey.home;
    case raylib.KeyboardKey.END:
      return KeyboardKey.end;
    case raylib.KeyboardKey.CAPS_LOCK:
      return KeyboardKey.capsLock;
    case raylib.KeyboardKey.SCROLL_LOCK:
      return KeyboardKey.scrollLock;
    case raylib.KeyboardKey.NUM_LOCK:
      return KeyboardKey.numLock;
    case raylib.KeyboardKey.PRINT_SCREEN:
      return KeyboardKey.printScreen;
    case raylib.KeyboardKey.PAUSE:
      return KeyboardKey.pause;
    case raylib.KeyboardKey.F1:
      return KeyboardKey.f1;
    case raylib.KeyboardKey.F2:
      return KeyboardKey.f2;
    case raylib.KeyboardKey.F3:
      return KeyboardKey.f3;
    case raylib.KeyboardKey.F4:
      return KeyboardKey.f4;
    case raylib.KeyboardKey.F5:
      return KeyboardKey.f5;
    case raylib.KeyboardKey.F6:
      return KeyboardKey.f6;
    case raylib.KeyboardKey.F7:
      return KeyboardKey.f7;
    case raylib.KeyboardKey.F8:
      return KeyboardKey.f8;
    case raylib.KeyboardKey.F9:
      return KeyboardKey.f9;
    case raylib.KeyboardKey.F10:
      return KeyboardKey.f10;
    case raylib.KeyboardKey.F11:
      return KeyboardKey.f11;
    case raylib.KeyboardKey.F12:
      return KeyboardKey.f12;
    case raylib.KeyboardKey.LEFT_SHIFT:
      return KeyboardKey.leftShift;
    case raylib.KeyboardKey.LEFT_CONTROL:
      return KeyboardKey.leftControl;
    case raylib.KeyboardKey.LEFT_ALT:
      return KeyboardKey.leftAlt;
    case raylib.KeyboardKey.LEFT_SUPER:
      return KeyboardKey.leftSuper;
    case raylib.KeyboardKey.RIGHT_SHIFT:
      return KeyboardKey.rightShift;
    case raylib.KeyboardKey.RIGHT_CONTROL:
      return KeyboardKey.rightControl;
    case raylib.KeyboardKey.RIGHT_ALT:
      return KeyboardKey.rightAlt;
    case raylib.KeyboardKey.RIGHT_SUPER:
      return KeyboardKey.rightSuper;
    case raylib.KeyboardKey.KB_MENU:
      return KeyboardKey.kbMenu;
    case raylib.KeyboardKey.KP_0:
      return KeyboardKey.kp0;
    case raylib.KeyboardKey.KP_1:
      return KeyboardKey.kp1;
    case raylib.KeyboardKey.KP_2:
      return KeyboardKey.kp2;
    case raylib.KeyboardKey.KP_3:
      return KeyboardKey.kp3;
    case raylib.KeyboardKey.KP_4:
      return KeyboardKey.kp4;
    case raylib.KeyboardKey.KP_5:
      return KeyboardKey.kp5;
    case raylib.KeyboardKey.KP_6:
      return KeyboardKey.kp6;
    case raylib.KeyboardKey.KP_7:
      return KeyboardKey.kp7;
    case raylib.KeyboardKey.KP_8:
      return KeyboardKey.kp8;
    case raylib.KeyboardKey.KP_9:
      return KeyboardKey.kp9;
    case raylib.KeyboardKey.KP_DECIMAL:
      return KeyboardKey.kpDecimal;
    case raylib.KeyboardKey.KP_DIVIDE:
      return KeyboardKey.kpDivide;
    case raylib.KeyboardKey.KP_MULTIPLY:
      return KeyboardKey.kpMultiply;
    case raylib.KeyboardKey.KP_SUBTRACT:
      return KeyboardKey.kpSubtract;
    case raylib.KeyboardKey.KP_ADD:
      return KeyboardKey.kpAdd;
    case raylib.KeyboardKey.KP_ENTER:
      return KeyboardKey.kpEnter;
    case raylib.KeyboardKey.KP_EQUAL:
      return KeyboardKey.kpEqual;
    case raylib.KeyboardKey.BACK:
      return KeyboardKey.back;
    // TODO(wolfen): Not sure if we should keep this in.
    // case raylib.KeyboardKey.MENU:
    //   return KeyboardKey.menu;
    case raylib.KeyboardKey.VOLUME_UP:
      return KeyboardKey.volumeUp;
    case raylib.KeyboardKey.VOLUME_DOWN:
      return KeyboardKey.volumeDown;
    default:
      throw Exception('Unknown KeyboardKey: $key');
  }
}

/// Get char pressed (unicode), call it multiple times for chars queued,
/// returns 0 when the queue is empty.
int getCharPressed() {
  return library.GetCharPressed();
}
