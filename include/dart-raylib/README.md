**I will be updating this library to Raylib 5.0 over the summer of 2024**

<img src="https://gitlab.com/wolfenrain/dart-raylib/-/raw/main/logo/raylib-dart_256x256.png" width="256px">

# Raylib

[![plugin version](https://img.shields.io/pub/v/raylib?label=pub)](https://pub.dev/packages/raylib)
[![coverage report](https://gitlab.com/wolfenrain/dart-raylib/badges/main/coverage.svg)](https://gitlab.com/wolfenrain/dart-raylib/-/commits/main)
[![pipeline status](https://gitlab.com/wolfenrain/dart-raylib/badges/main/pipeline.svg)](https://gitlab.com/wolfenrain/dart-raylib/-/commits/main)
[![dependencies](https://img.shields.io/librariesio/release/pub/raylib?label=dependencies)](https://gitlab.com/wolfenrain/dart-raylib/-/blob/main/pubspec.yaml)
[![Examples](https://img.shields.io/badge/learn%20by-examples-0077b3.svg)](https://gitlab.com/wolfenrain/dart-raylib/tree/main/example)

Dart bindings for [raylib](https://raylib.com), a simple and easy-to-use library to enjoy videogames programming.

**Note**: This package was written for `raylib` version 4.x and higher, older versions are not supported.

Currently this library does not support the following platforms:
- iOS, `raylib` is built on top of OpenGL and that isn't supported on iOS.
- macOS, `raylib` creates windows natively but on macOS that is only possible if you do it from the main thread but sadly the Dart VM is not the main thread. For more information check [this issue](https://github.com/dart-lang/sdk/issues/38315) and [this one](https://github.com/dart-lang/sdk/issues/19380).

Not every binding has been fully tested. If you find a bug I would appreciate it if you [created an issue on the repo](https://gitlab.com/wolfenrain/dart-raylib/-/issues/new).

## Usage

Add `raylib` as a dependency to your pubspec.yaml file ([what?](https://flutter.io/using-packages/)).

Importing `raylib`:

```dart
import 'package:raylib/raylib.dart';
```

You need to tell the package where it can find your raylib library:

```dart
initLibrary(
  linux: '../include/libraylib.so',
  windows: '../somewhere/else.dll',
);
```

See the [example](https://gitlab.com/wolfenrain/dart-raylib/-/tree/main/example/lib) directory for examples.

# Development

## Linux

You need to have both `make` and `git` installed: 

```sh
sudo apt install build-essential git
```

After that you can check out the submodules:

```sh
git submodule update --init --recursive
```

With the submodules downloaded you can start compiling `raylib`:

```sh
cd vendor/raylib/src
make PLATFORM=PLATFORM_DESKTOP RAYLIB_LIBTYPE=SHARED
```

### Examples
To run the examples copy the compiled library to the example folder:

```sh
cp ../libraylib.so.4.0.0 ../../../example/include/libraylib.so
```

## Windows

You need to have `make`, `git`, and a c++ compiler on PATH
- I recommend installing [scoop](https://scoop.sh/#/) and using it to install [MinGW](https://www.mingw-w64.org/)

After that you can check out the submodules:

```sh
git submodule update --init --recursive
```

With the submodules downloaded you can start compiling `raylib`:

```sh
cd vendor/raylib/src
make PLATFORM=PLATFORM_DESKTOP RAYLIB_LIBTYPE=SHARED
```

### Examples

WIP
