import 'package:raylib/src/generated_bindings.dart';

export 'src/classes/bone_info.dart';

/// Classes.
export 'src/classes/bounding_box.dart';
export 'src/classes/camera_2d.dart';
export 'src/classes/camera_3d.dart';
export 'src/classes/color.dart';
export 'src/classes/font.dart';
export 'src/classes/glyph_info.dart';
export 'src/classes/image.dart';
export 'src/classes/material.dart';
export 'src/classes/material_map.dart';
export 'src/classes/matrix.dart';
export 'src/classes/mesh.dart';
export 'src/classes/model.dart';
export 'src/classes/model_animation.dart';
export 'src/classes/n_patch_info.dart';
export 'src/classes/ray.dart';
export 'src/classes/ray_collision.dart';
export 'src/classes/rectangle.dart';
export 'src/classes/render_texture.dart';
export 'src/classes/shader.dart';
export 'src/classes/texture.dart';
export 'src/classes/transform.dart';
export 'src/classes/vector2.dart';
export 'src/classes/vector3.dart';
export 'src/classes/vector4.dart';

/// Exporting enums.
export 'src/enums/blend_mode.dart' show BlendMode;
export 'src/enums/camera_mode.dart' show CameraMode;
export 'src/enums/config_flags.dart' show ConfigFlags;
export 'src/enums/cubemap_layout.dart' show CubemapLayout;
export 'src/enums/font_type.dart' show FontType;
export 'src/enums/gamepad_axis.dart' show GamepadAxis;
export 'src/enums/gamepad_button.dart' show GamepadButton;
export 'src/enums/gesture.dart' show Gesture;
export 'src/enums/keyboard_key.dart' show KeyboardKey;
export 'src/enums/mouse_button.dart' show MouseButton;
export 'src/enums/mouse_cursor.dart' show MouseCursor;
export 'src/enums/n_patch_layout.dart' show NPatchLayout;
export 'src/enums/pixel_format.dart' show PixelFormat;
export 'src/enums/texture_filter.dart' show TextureFilter;
export 'src/enums/texture_wrap.dart' show TextureWrap;

export 'src/generated_bindings.dart'
    show
        MaterialMapIndex,
        ShaderAttributeDataType,
        ShaderLocationIndex,
        ShaderUniformDataType,
        TraceLogLevel;

export 'src/library.dart' hide library;

/// Modules.
export 'src/modules/modules.dart';
export 'src/utils/pointer_list.dart' hide PointerList;

/// Used for accessing the material map diffuse.
const materialMapDiffuse = MATERIAL_MAP_DIFFUSE;

/// Used for accessing the material map specular.
const materialMapSpecular = MATERIAL_MAP_SPECULAR;
