import 'package:flutter/material.dart';
import 'extension/int_extension.dart';
import 'shared/size_fit.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LSPSizeFit.initialize();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: const HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  const HYHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    // 2.手机屏幕的大小(逻辑分辨率)
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    // final statusHeight = MediaQuery.of(context).padding.top;
    // print("状态栏的高度: $statusHeight");


    print("屏幕宽高: ${LSPSizeFit.screenWidth}");

    print(200.px);
    print(400.rpx);

    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
      ),
      body: Center(
        child: Container(
          width: 200.px,
          height: 200.px,
          color: Colors.red,
          alignment: Alignment.center,
          child: Text("Hello World", style: TextStyle(fontSize: 20.px),),
        ),
      ),
    );
  }
}