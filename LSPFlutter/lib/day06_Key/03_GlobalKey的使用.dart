import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
      ),
    );
  }
}

class HYHomePage extends StatelessWidget {
  HYHomePage({super.key});

  final GlobalKey<_HYHomeContentState> homeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: HYHomeContent(key: homeKey,),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.gesture),
        onPressed: (){
          print(homeKey.currentState?.message);
          print(homeKey.currentState?.widget.name);
          homeKey.currentState?.test();
        },
      ),
    );
  }
}

class HYHomeContent extends StatefulWidget {
  const HYHomeContent({super.key});
  final String name = "李大锤";
  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  final String message = "Hello World";

  void test() {
    print("testtesttest");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}