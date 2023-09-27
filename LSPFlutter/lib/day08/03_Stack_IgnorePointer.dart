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
      body: const StackIgnoreDemo(),
    );
  }
}

class StackIgnoreDemo extends StatelessWidget {
  const StackIgnoreDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GestureDetector(
            onTapDown: (details) {
              print("outer click");
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
              alignment: Alignment.center,
            ),
          ),
          IgnorePointer(
            child: GestureDetector(
              onTapDown: (details) {
                print("inner click");
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.purpleAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
