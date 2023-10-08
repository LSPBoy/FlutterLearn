import 'package:flutter/foundation.dart';
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
      body: const HYHomeContent(),
    );
  }
}

class HYHomeContent extends StatefulWidget {
  const HYHomeContent({super.key});

  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {

  @override
  void initState() {
    super.initState();
    print("initState");

    runCalc();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void runCalc() async {
    var result = await compute(calc, 100);
    print("====$result");
  }
}
//注意点：compute传的函数必须是全局函数，局部函数会崩溃
int calc(int count) {
  int total = 0;
  for (int i = 0; i < count; i++) {
    total += i;
  }
  return total;
}