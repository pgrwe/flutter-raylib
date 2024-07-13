import 'dart:ffi';
import 'dart:io';

import 'package:raylib/src/generated_bindings.dart';

late final Raylib? _library;

/// Dynamic library of raylib.
Raylib get library {
  if (_library == null) {
    throw Exception(
      'Raylib has not been initialized, did you call initLibrary()?',
    );
  }
  return _library!;
}

set library(Raylib lib) => _library = lib;

/// Initialize the raylib library by passing the path to the library for each
/// supported platform.
void initLibrary({
  String? linux,
  String? windows,
}) {
  if (Platform.isLinux && linux == null) {
    throw Exception('Running on linux but no library path was provided');
  } else if (Platform.isWindows && windows == null) {
    throw Exception('Running on windows but no library path was provided');
  }

  final String libraryPath;
  if (Platform.isLinux) {
    libraryPath = linux!;
  } else if (Platform.isWindows) {
    libraryPath = windows!;
  } else {
    throw UnsupportedError(
      '''
Platform ${Platform.operatingSystem} is untested and therefore unsupported.
Please file a bug report if you think this is incorrect
''',
    );
  }

  library = Raylib(DynamicLibrary.open(libraryPath));
}
