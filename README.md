# Flutter-Raylib
Simple proof of concept for creating a [raylib](https://www.raylib.com/) context alongside a flutter application. Currently (seemingly) stable. 
## How?
Create a child isolate that holds a raylib context then pass data to the child from the parent isolate (currently just the cube color).

The child isolate's main game loop has `await Future.delayed(const Duration(milliseconds: 0));` to make the loop run asynchronously so `onData` can actually handle messages. If there is a better way to do this please let me know.

## Why?
For the purpose of visualizing a robotic arm in 3D alongside our current dashboard (Binghamton University Rover Team). Similar to [ros2/rvis](https://github.com/ros2/rviz). Raylib is cross platform and has a simple API, there were also resources already in place to keep everything in dart (shoutout Jochum van der Ploeg).

Incorporating the creation of a raylib window directly a flutter program means we don't have to have a separate executable somewhere on disk to run with dart's process library.

## Cloning the Repository
```bash
git clone https://github.com/payl-ampa/flutter-raylib
cd flutter-raylib
git submodule update --init
# git submodule update --init --recursive if you want to raylib's C code in dart-raylib
```

## Running the Project
```bash
cd flrl_v1
flutter run
```
Unfortuately, dart-raylib only supports windows and linux, if you have any problems please open up a github issue and I can take a look.

## Credits
Jochum van der Ploeg - [dart-raylib bindings](https://gitlab.com/wolfenrain/dart-raylib)

Levi Lesches - [typed_isolate](https://github.com/Levi-Lesches/typed_isolate) **note. I am using a modified version of this library, so there may be discrepancies*

[Jacob Bang](https://github.com/julemand101) - helped out tremendously in the dart discord

#### Previous  Bugs
Fixed by Jacob Bang
- ~~`Invalid argument(s): No child isolate found with id=rlIsolate` - Child isolate's cube no longer changes color~~
- ~~`rlCanCreateContext` is never set back to true after the closing of the 2nd window~~


#### Notes

I might be updating the dart-raylib bindings to raylib 5.0 if I have time this summer, it has a couple of quality of life features and api changes that are worth the upgrade.

Raylib doesn't support quads out of the box, so I may also be updating the [assimp](https://github.com/jpnurmi/assimp.dart) bindings, but that looks like significantly more work since ill be going from c++ to dart.

