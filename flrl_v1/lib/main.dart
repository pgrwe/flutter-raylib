import 'package:flutter/material.dart';
import 'dart:async';
import 'package:raylib/raylib.dart';
import 'package:raylib_flutter/src/data.dart';
import 'package:raylib_flutter/src/raylib_isolate.dart';
import 'package:typed_isolate/typed_isolate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title; 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class RaylibController extends IsolateParent<RaylibCommand, IsolatePayload>{
  int _counter = 0;
  Color _color = Color.red;
  bool rlCanCreateContext = true;
  bool rlContextIsOpen = false;

  RaylibIsolate rlIsolate = RaylibIsolate(id: "rlIsolate");

  @override
  Future<void> init() async {
    super.init();
  }

  @override
  void onData(IsolatePayload data, Object id) async{
    // print("Data received from isolate: $data");
    rlContextIsOpen =  data.rlContextIsOpen; 
    if (data.rlClearIsolates == true){
      super.cleanup();
      rlCanCreateContext = true;
    }
  }  

  void updateColor(RaylibIsolate rlIsolate){
    if (rlContextIsOpen){
      _counter++;
      var list = [Color.beige, Color.blue, Color.brown];  
      _color = list[_counter % list.length]; 
      send(data: RaylibCommand(color: _color), id: rlIsolate.id);
    } else {
      // send some feedback to the user
      print("Window is not open");
    }
  }

  void createRaylibContext() async{
    if (rlCanCreateContext){
      await spawn(rlIsolate); 
      rlCanCreateContext = false;
    } else {
      // send some feedback to the user
      print("Window is already open");
    }
  }
}

class _MyHomePageState extends State<MyHomePage> {

  RaylibController controller = RaylibController();

  void _updateColor(){
    setState(() {
      controller.updateColor(controller.rlIsolate);
    });
  }
  
  @override
  void initState(){
    super.initState();
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Raylib-Flutter demo:',
            ),
            FloatingActionButton.extended(
              onPressed: _updateColor,
              tooltip: 'Changes cube color',
              label: const Text(
                'Change the Cube Color!',
                textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: controller.createRaylibContext,
        tooltip: 'start raylib',
        label: const Text('Click to Start Raylib'),
        icon: const Icon(Icons.refresh),
      ), 
    );
  }
}
