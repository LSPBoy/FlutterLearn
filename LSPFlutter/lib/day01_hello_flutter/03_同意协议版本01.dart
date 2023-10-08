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
        title: const Text("第一个Flutter程序"),
      ),
      body: const HYContentBody(),
    );
  }
}

class HYContentBody extends StatelessWidget {
  //被标记immutable的类，里面的属性只能用final修饰
  final flag = true;

  const HYContentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: flag,
            onChanged: (value) {
              print(value);
            },
          ),
          const Text("同意协议", style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
