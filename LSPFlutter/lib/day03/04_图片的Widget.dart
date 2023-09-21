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
    return const FadeImageDemo();
  }
}

//1、在flutter项目中创建一个assets文件夹，在在flutter项目中创建一个assets文件夹中创建一个文件夹images，存储图片
//2、在pubspec.yaml进行配置
//3、使用图片
class LocalImageDemo extends StatelessWidget {
  const LocalImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // return Image(image: AssetImage("assets/images/girl.jpeg"));
    return Image.asset("assets/images/girl2.jpeg");
  }
}

class ImageDemo01 extends StatelessWidget {
  final imageURL =
      "https://img1.baidu.com/it/u=3908907288,3312880228&fm=253&fmt=auto&app=120&f=JPEG?w=1280&h=800";

  const ImageDemo01({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(imageURL);
  }
}

class ImageDemo02 extends StatelessWidget {
  final imageURL =
      "https://img2.baidu.com/it/u=3354585195,1512541150&fm=253&fmt=auto&app=138&f=JPEG?w=890&h=500";

  const ImageDemo02({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imageURL),
      width: 200,
      height: 200,
      fit: BoxFit.fitWidth,
      color: Colors.red,
      colorBlendMode: BlendMode.lighten,
      alignment: const Alignment(0, 0),
      repeat: ImageRepeat.repeatY,
    );
  }
}

class FadeImageDemo extends StatelessWidget {
  final imageURL =
      "https://img1.baidu.com/it/u=3017945108,879188399&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=889";

  const FadeImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    //1.使用FadeInImage解决占位图
    //2.图片缓存：1000张 + 100M
    return FadeInImage(
        fadeOutDuration: const Duration(milliseconds: 1),
        fadeInDuration: const Duration(milliseconds: 1),
        placeholder: const AssetImage("assets/images/placeholder.jpeg"),
        image: NetworkImage(imageURL));
  }
}
