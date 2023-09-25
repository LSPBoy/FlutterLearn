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
      body: const HYHomeContent(
        message: "你好，李大锤",
      ),
    );
  }
}

class HYHomeContent extends StatefulWidget {
  final String message;

  const HYHomeContent({super.key, required this.message});

  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  @override
  Widget build(BuildContext context) {
    return const IconDemo();
  }
}

//Icon字体图标和图片图标的区别
//1、字体图标矢量图，放大不会失真
//2、字体图标可以设置颜色
//3、占据空间更小
class IconDemo extends StatelessWidget {
  const IconDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return const Icon(Icons.pets, size: 300, color: Colors.orange,);

    //设置对应的字体
    // static const IconData pets_sharp = IconData(0xeb98, fontFamily: 'MaterialIcons');
    //1.0xe91d —> unicode编码
    // return const Text("\uf0077", style: TextStyle(fontSize: 100, color: Colors.orange, fontFamily: "MaterialIcons"),);
  }

}