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
    return const ContainerDemo();
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  final imageUrl =
      "https://img0.baidu.com/it/u=2990896501,3397348398&fm=253&fmt=auto&app=120&f=JPEG?w=1280&h=800";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 800,
      // alignment: Alignment(0, 0),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      child: const Text("Hello World"),
      //Text("Hello World") Icon(Icons.pets, size: 50, color: Colors.white,)
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(imageUrl)),
          color: Colors.red,
          border: Border.all(width: 5, color: Colors.purple),
          boxShadow: const [
            BoxShadow(
                color: Colors.orange,
                offset: Offset(10, 10),
                spreadRadius: 5,
                blurRadius: 10),
            BoxShadow(
                color: Colors.greenAccent,
                offset: Offset(-10, 10),
                spreadRadius: 5,
                blurRadius: 10)
          ]),
    );
  }
}
