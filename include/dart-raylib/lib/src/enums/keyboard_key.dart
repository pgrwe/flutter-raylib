import 'package:raylib/src/generated_bindings.dart' as raylib;

/// Keyboard keys (US keyboard layout).
///
/// NOTE: Use GetKeyPressed() to allow redefining required keys for alternative
/// layouts.
enum KeyboardKey {
  /// Key: none, used for no key pressed.
  none,

  /// Key: '.
  apostrophe,

  /// Key: ,.
  comma,

  /// Key: -.
  minus,

  /// Key: ..
  period,

  /// Key: /.
  slash,

  /// Key: 0.
  zero,

  /// Key: 1.
  one,

  /// Key: 2.
  two,

  /// Key: 3.
  three,

  /// Key: 4.
  four,

  /// Key: 5.
  five,

  /// Key: 6.
  six,

  /// Key: 7.
  seven,

  /// Key: 8.
  eight,

  /// Key: 9.
  nine,

  /// Key: ;.
  semicolon,

  /// Key: =.
  equal,

  /// Key: A | a.
  a,

  /// Key: B | b.
  b,

  /// Key: C | c.
  c,

  /// Key: D | d.
  d,

  /// Key: E | e.
  e,

  /// Key: F | f.
  f,

  /// Key: G | g.
  g,

  /// Key: H | h.
  h,

  /// Key: I | i.
  i,

  /// Key: J | j.
  j,

  /// Key: K | k.
  k,

  /// Key: L | l.
  l,

  /// Key: M | m.
  m,

  /// Key: N | n.
  n,

  /// Key: O | o.
  o,

  /// Key: P | p.
  p,

  /// Key: Q | q.
  q,

  /// Key: R | r.
  r,

  /// Key: S | s.
  s,

  /// Key: T | t.
  t,

  /// Key: U | u.
  u,

  /// Key: V | v.
  v,

  /// Key: W | w.
  w,

  /// Key: X | x.
  x,

  /// Key: Y | y.
  y,

  /// Key: Z | z.
  z,

  /// Key: [.
  leftBracket,

  /// Key: '\'.
  backSlash,

  /// Key: ].
  rightBracket,

  /// Key: `.
  grave,

  /// Key: Space.
  space,

  /// Key: Esc.
  escape,

  /// Key: Enter.
  enter,

  /// Key: Tab.
  tab,

  /// Key: Backspace.
  backspace,

  /// Key: Ins.
  insert,

  /// Key: Del.
  delete,

  /// Key: Cursor right.
  right,

  /// Key: Cursor left.
  left,

  /// Key: Cursor down.
  down,

  /// Key: Cursor up.
  up,

  /// Key: Page up.
  pageUp,

  /// Key: Page down.
  pageDown,

  /// Key: Home.
  home,

  /// Key: End.
  end,

  /// Key: Caps lock.
  capsLock,

  /// Key: Scroll down.
  scrollLock,

  /// Key: Num lock.
  numLock,

  /// Key: Print screen.
  printScreen,

  /// Key: Pause.
  pause,

  /// Key: F1.
  f1,

  /// Key: F2.
  f2,

  /// Key: F3.
  f3,

  /// Key: F4.
  f4,

  /// Key: F5.
  f5,

  /// Key: F6.
  f6,

  /// Key: F7.
  f7,

  /// Key: F8.
  f8,

  /// Key: F9.
  f9,

  /// Key: F10.
  f10,

  /// Key: F11.
  f11,

  /// Key: F12.
  f12,

  /// Key: Shift left.
  leftShift,

  /// Key: Control left.
  leftControl,

  /// Key: Alt left.
  leftAlt,

  /// Key: Super left.
  leftSuper,

  /// Key: Shift right.
  rightShift,

  /// Key: Control right.
  rightControl,

  /// Key: Alt right.
  rightAlt,

  /// Key: Super right.
  rightSuper,

  /// Key: KB menu.
  kbMenu,

  /// Key: Keypad 0.
  kp0,

  /// Key: Keypad 1.
  kp1,

  /// Key: Keypad 2.
  kp2,

  /// Key: Keypad 3.
  kp3,

  /// Key: Keypad 4.
  kp4,

  /// Key: Keypad 5.
  kp5,

  /// Key: Keypad 6.
  kp6,

  /// Key: Keypad 7.
  kp7,

  /// Key: Keypad 8.
  kp8,

  /// Key: Keypad 9.
  kp9,

  /// Key: Keypad ..
  kpDecimal,

  /// Key: Keypad /.
  kpDivide,

  /// Key: Keypad *.
  kpMultiply,

  /// Key: Keypad -.
  kpSubtract,

  /// Key: Keypad +.
  kpAdd,

  /// Key: Keypad Enter.
  kpEnter,

  /// Key: Keypad =.
  kpEqual,

  /// Key: Android back button.
  back,

  /// Key: Android menu button.
  menu,

  /// Key: Android volume up button.
  volumeUp,

  /// Key: Android volume down button.
  volumeDown,
}

/// Convert given enum to native value.
int keyboardKeyToNative(KeyboardKey key) {
  switch (key) {
    case KeyboardKey.none:
      return raylib.KeyboardKey.NULL;
    case KeyboardKey.apostrophe:
      return raylib.KeyboardKey.APOSTROPHE;
    case KeyboardKey.comma:
      return raylib.KeyboardKey.COMMA;
    case KeyboardKey.minus:
      return raylib.KeyboardKey.MINUS;
    case KeyboardKey.period:
      return raylib.KeyboardKey.PERIOD;
    case KeyboardKey.slash:
      return raylib.KeyboardKey.SLASH;
    case KeyboardKey.zero:
      return raylib.KeyboardKey.ZERO;
    case KeyboardKey.one:
      return raylib.KeyboardKey.ONE;
    case KeyboardKey.two:
      return raylib.KeyboardKey.TWO;
    case KeyboardKey.three:
      return raylib.KeyboardKey.THREE;
    case KeyboardKey.four:
      return raylib.KeyboardKey.FOUR;
    case KeyboardKey.five:
      return raylib.KeyboardKey.FIVE;
    case KeyboardKey.six:
      return raylib.KeyboardKey.SIX;
    case KeyboardKey.seven:
      return raylib.KeyboardKey.SEVEN;
    case KeyboardKey.eight:
      return raylib.KeyboardKey.EIGHT;
    case KeyboardKey.nine:
      return raylib.KeyboardKey.NINE;
    case KeyboardKey.semicolon:
      return raylib.KeyboardKey.SEMICOLON;
    case KeyboardKey.equal:
      return raylib.KeyboardKey.EQUAL;
    case KeyboardKey.a:
      return raylib.KeyboardKey.A;
    case KeyboardKey.b:
      return raylib.KeyboardKey.B;
    case KeyboardKey.c:
      return raylib.KeyboardKey.C;
    case KeyboardKey.d:
      return raylib.KeyboardKey.D;
    case KeyboardKey.e:
      return raylib.KeyboardKey.E;
    case KeyboardKey.f:
      return raylib.KeyboardKey.F;
    case KeyboardKey.g:
      return raylib.KeyboardKey.G;
    case KeyboardKey.h:
      return raylib.KeyboardKey.H;
    case KeyboardKey.i:
      return raylib.KeyboardKey.I;
    case KeyboardKey.j:
      return raylib.KeyboardKey.J;
    case KeyboardKey.k:
      return raylib.KeyboardKey.K;
    case KeyboardKey.l:
      return raylib.KeyboardKey.L;
    case KeyboardKey.m:
      return raylib.KeyboardKey.M;
    case KeyboardKey.n:
      return raylib.KeyboardKey.N;
    case KeyboardKey.o:
      return raylib.KeyboardKey.O;
    case KeyboardKey.p:
      return raylib.KeyboardKey.P;
    case KeyboardKey.q:
      return raylib.KeyboardKey.Q;
    case KeyboardKey.r:
      return raylib.KeyboardKey.R;
    case KeyboardKey.s:
      return raylib.KeyboardKey.S;
    case KeyboardKey.t:
      return raylib.KeyboardKey.T;
    case KeyboardKey.u:
      return raylib.KeyboardKey.U;
    case KeyboardKey.v:
      return raylib.KeyboardKey.V;
    case KeyboardKey.w:
      return raylib.KeyboardKey.W;
    case KeyboardKey.x:
      return raylib.KeyboardKey.X;
    case KeyboardKey.y:
      return raylib.KeyboardKey.Y;
    case KeyboardKey.z:
      return raylib.KeyboardKey.Z;
    case KeyboardKey.leftBracket:
      return raylib.KeyboardKey.LEFT_BRACKET;
    case KeyboardKey.backSlash:
      return raylib.KeyboardKey.BACKSLASH;
    case KeyboardKey.rightBracket:
      return raylib.KeyboardKey.RIGHT_BRACKET;
    case KeyboardKey.grave:
      return raylib.KeyboardKey.GRAVE;
    case KeyboardKey.space:
      return raylib.KeyboardKey.SPACE;
    case KeyboardKey.escape:
      return raylib.KeyboardKey.ESCAPE;
    case KeyboardKey.enter:
      return raylib.KeyboardKey.ENTER;
    case KeyboardKey.tab:
      return raylib.KeyboardKey.TAB;
    case KeyboardKey.backspace:
      return raylib.KeyboardKey.BACKSPACE;
    case KeyboardKey.insert:
      return raylib.KeyboardKey.INSERT;
    case KeyboardKey.delete:
      return raylib.KeyboardKey.DELETE;
    case KeyboardKey.right:
      return raylib.KeyboardKey.RIGHT;
    case KeyboardKey.left:
      return raylib.KeyboardKey.LEFT;
    case KeyboardKey.down:
      return raylib.KeyboardKey.DOWN;
    case KeyboardKey.up:
      return raylib.KeyboardKey.UP;
    case KeyboardKey.pageUp:
      return raylib.KeyboardKey.PAGE_UP;
    case KeyboardKey.pageDown:
      return raylib.KeyboardKey.PAGE_DOWN;
    case KeyboardKey.home:
      return raylib.KeyboardKey.HOME;
    case KeyboardKey.end:
      return raylib.KeyboardKey.END;
    case KeyboardKey.capsLock:
      return raylib.KeyboardKey.CAPS_LOCK;
    case KeyboardKey.scrollLock:
      return raylib.KeyboardKey.SCROLL_LOCK;
    case KeyboardKey.numLock:
      return raylib.KeyboardKey.NUM_LOCK;
    case KeyboardKey.printScreen:
      return raylib.KeyboardKey.PRINT_SCREEN;
    case KeyboardKey.pause:
      return raylib.KeyboardKey.PAUSE;
    case KeyboardKey.f1:
      return raylib.KeyboardKey.F1;
    case KeyboardKey.f2:
      return raylib.KeyboardKey.F2;
    case KeyboardKey.f3:
      return raylib.KeyboardKey.F3;
    case KeyboardKey.f4:
      return raylib.KeyboardKey.F4;
    case KeyboardKey.f5:
      return raylib.KeyboardKey.F5;
    case KeyboardKey.f6:
      return raylib.KeyboardKey.F6;
    case KeyboardKey.f7:
      return raylib.KeyboardKey.F7;
    case KeyboardKey.f8:
      return raylib.KeyboardKey.F8;
    case KeyboardKey.f9:
      return raylib.KeyboardKey.F9;
    case KeyboardKey.f10:
      return raylib.KeyboardKey.F10;
    case KeyboardKey.f11:
      return raylib.KeyboardKey.F11;
    case KeyboardKey.f12:
      return raylib.KeyboardKey.F12;
    case KeyboardKey.leftShift:
      return raylib.KeyboardKey.LEFT_SHIFT;
    case KeyboardKey.leftControl:
      return raylib.KeyboardKey.LEFT_CONTROL;
    case KeyboardKey.leftAlt:
      return raylib.KeyboardKey.LEFT_ALT;
    case KeyboardKey.leftSuper:
      return raylib.KeyboardKey.LEFT_SUPER;
    case KeyboardKey.rightShift:
      return raylib.KeyboardKey.RIGHT_SHIFT;
    case KeyboardKey.rightControl:
      return raylib.KeyboardKey.RIGHT_CONTROL;
    case KeyboardKey.rightAlt:
      return raylib.KeyboardKey.RIGHT_ALT;
    case KeyboardKey.rightSuper:
      return raylib.KeyboardKey.RIGHT_SUPER;
    case KeyboardKey.kbMenu:
      return raylib.KeyboardKey.KB_MENU;
    case KeyboardKey.kp0:
      return raylib.KeyboardKey.KP_0;
    case KeyboardKey.kp1:
      return raylib.KeyboardKey.KP_1;
    case KeyboardKey.kp2:
      return raylib.KeyboardKey.KP_2;
    case KeyboardKey.kp3:
      return raylib.KeyboardKey.KP_3;
    case KeyboardKey.kp4:
      return raylib.KeyboardKey.KP_4;
    case KeyboardKey.kp5:
      return raylib.KeyboardKey.KP_5;
    case KeyboardKey.kp6:
      return raylib.KeyboardKey.KP_6;
    case KeyboardKey.kp7:
      return raylib.KeyboardKey.KP_7;
    case KeyboardKey.kp8:
      return raylib.KeyboardKey.KP_8;
    case KeyboardKey.kp9:
      return raylib.KeyboardKey.KP_9;
    case KeyboardKey.kpDecimal:
      return raylib.KeyboardKey.KP_DECIMAL;
    case KeyboardKey.kpDivide:
      return raylib.KeyboardKey.KP_DIVIDE;
    case KeyboardKey.kpMultiply:
      return raylib.KeyboardKey.KP_MULTIPLY;
    case KeyboardKey.kpSubtract:
      return raylib.KeyboardKey.KP_SUBTRACT;
    case KeyboardKey.kpAdd:
      return raylib.KeyboardKey.KP_ADD;
    case KeyboardKey.kpEnter:
      return raylib.KeyboardKey.KP_ENTER;
    case KeyboardKey.kpEqual:
      return raylib.KeyboardKey.KP_EQUAL;
    case KeyboardKey.back:
      return raylib.KeyboardKey.BACK;
    case KeyboardKey.menu:
      return raylib.KeyboardKey.MENU;
    case KeyboardKey.volumeUp:
      return raylib.KeyboardKey.VOLUME_UP;
    case KeyboardKey.volumeDown:
      return raylib.KeyboardKey.VOLUME_DOWN;
  }
}
