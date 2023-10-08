import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  const HYHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: ListenerDemo(),
    );
  }
}

class ListenerDemo extends StatelessWidget {
  const ListenerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Listener(
        onPointerDown: (event) {
          print("指针按下:$event");
          print(event.position);
          print(event.localPosition);
        },
        onPointerMove: (event) {
//            print("指针移动:$event");
        },
        onPointerUp: (event) {
//            print("指针抬起:$event");
        },
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}
