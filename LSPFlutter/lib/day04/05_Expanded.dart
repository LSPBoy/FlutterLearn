import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
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
        title: const Text("商品列表"),
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
  Widget build(BuildContext context) {
    return const ExpandedDemo();
  }
}


//Expanded相当于Flexible(fit: FlexFit.tight）
//flex会覆盖宽度，宽度无效
//既能收缩又能伸展
class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic,
        textDirection: TextDirection.ltr,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 60,
                color: Colors.red,
              )),
          Expanded(
              flex: 1,
              child: Container(
                width: 120,
                height: 100,
                color: Colors.yellow,
              )),
          Container(
            width: 60,
            height: 150,
            color: Colors.green,
          ),
          Container(
            width: 80,
            height: 150,
            color: Colors.orange,
          )
        ]);
  }
}