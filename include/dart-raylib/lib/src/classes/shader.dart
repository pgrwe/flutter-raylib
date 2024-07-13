import 'dart:ffi';

import 'package:raylib/src/generated_bindings.dart' as raylib;
import 'package:raylib/src/utils/native_type.dart';
import 'package:raylib/src/utils/pointer_list.dart';

/// Material, includes shader and maps.
class Shader extends NativeClass<raylib.Shader> {
  /// Material, includes shader and maps.
  Shader.fromRef(raylib.Shader ref) : super.fromRef(ref);

  /// Shader program id.
  int get id => ref.id;

  /// Shader locations array (RL_MAX_SHADER_LOCATIONS).
  PointerList<Int32> get locs => PointerList(ref.locs);
}
