import 'package:raylib/raylib.dart';
import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';

/// NPatchInfo, n-patch layout info.
class NPatchInfo extends NativeClass<raylib.NPatchInfo> {
  /// Construct NPatchInfo from native reference.
  NPatchInfo.fromRef(raylib.NPatchInfo ref) : super.fromRef(ref);

  /// Texture source rectangle.
  Rectangle get source => Rectangle.fromRef(ref.source);

  /// Left border offset.
  int get left => ref.left;

  /// Top border offset.
  int get top => ref.top;

  /// Right border offset.
  int get right => ref.right;

  /// Bottom border offset.
  int get bottom => ref.bottom;

  /// Layout of the n-patch: 3x3, 1x3 or 3x1.
  NPatchLayout get layout {
    final layout = ref.layout;
    switch (layout) {
      case raylib.NPatchLayout.NINE_PATCH:
        return NPatchLayout.ninePatch;
      case raylib.NPatchLayout.THREE_PATCH_VERTICAL:
        return NPatchLayout.threePatchVertical;
      case raylib.NPatchLayout.THREE_PATCH_HORIZONTAL:
        return NPatchLayout.threePatchHorizontal;
      default:
        throw Exception('Unknown NPatchLayout: $layout');
    }
  }
}
