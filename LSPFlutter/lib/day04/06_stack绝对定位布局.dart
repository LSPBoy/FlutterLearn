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
    return const StackDemo2();
  }
}

class StackDemo2 extends StatefulWidget {
  const StackDemo2({super.key});

  @override
  State<StackDemo2> createState() => _StackDemo2State();
}

class _StackDemo2State extends State<StackDemo2> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset("assets/images/girl.jpeg"),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          // width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          color: const Color.fromARGB(150, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("你好，李大锤", style: TextStyle(fontSize: 20, color: Colors.purple),),
              IconButton(onPressed: () {
                setState(() {
                  _isFavorite = !_isFavorite;
                });
              }, icon: Icon(Icons.favorite, color: _isFavorite ? Colors.red : Colors.white,))
            ],
          ),
        ),
      )
    ],);
  }
}



/**
 * Stack默认的大小是包裹内容的
 *  - alignment: 从什么位置开始排布所有的子Widget
 *  - fit: expand(用的很少) 将子元素拉伸到尽可能大
 *
 * Positioned
 */
class StackDemo1 extends StatelessWidget {
  const StackDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      // fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          "assets/images/girl2.jpeg",
          width: 300,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          bottom: -50,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.green,
          ),
        ),
        const Positioned(
            right: 10,
            left: 10,
            child: Text(
              "你好，李大锤",
              style: TextStyle(fontSize: 20, color: Colors.purple),
            ))
      ],
    );
  }
}
