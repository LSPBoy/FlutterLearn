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
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //1.ElevatedButton
          ElevatedButton(
              onPressed: () {
                print("点击ElevatedButton");
              },
              child: const Text("ElevatedButton")),

          //2.TextButton
          TextButton(
            onPressed: () {
              print("点击TextButton");
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.red, backgroundColor: Colors.green),
            child: const Text("TextButton"),
          ),

          //3.OutlinedButton
          OutlinedButton(
              onPressed: () {
                print("点击OutlinedButton");
              },
              child: const Text("OutlinedButton")),

          //4.FloatingActionButton
          FloatingActionButton(
            onPressed: () {
              print("点击FloatingActionButton");
            },
            child: const Text("FloatingActionButton"),
          ),

          //5.自定义Button
          TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(15), //内边距
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap, //默认情况下Button上下有一定的间距，通过这个可以解决
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {
                print("点击喜欢作者");
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text(
                    "喜欢作者",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
