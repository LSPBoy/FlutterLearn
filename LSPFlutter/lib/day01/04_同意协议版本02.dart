//在iOS和安卓都是命令式编程，很少说状态
//在vue、react、angular、flutter经常会说状态，因为它们是声明式编程
//在flutter中开发中，所有的widget都不能定义状态
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

class HYContentBody extends StatefulWidget {

  const HYContentBody({super.key});

  @override
  State<HYContentBody> createState() => _HYContentBodyState();
}

class _HYContentBodyState extends State<HYContentBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: flag,
            onChanged: (value) {
              setState(() {
                flag = value ?? false;
              });
            },
          ),
          const Text("同意协议", style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
