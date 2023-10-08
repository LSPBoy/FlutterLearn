import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}

class LSPCounterWidget extends InheritedWidget {
  // 1.共享的数据
  final int counter;

  // 2.定义构造方法
  const LSPCounterWidget({required super.child, required this.counter});

  // 3.获取组件最近的当前InheritedWidget
  static LSPCounterWidget? of(BuildContext context) {
    // 沿着Element树, 去找到最近的LSPCounterElement, 从Element中取出Widget对象
    return context.dependOnInheritedWidgetOfExactType();
  }

  // 4.决定要不要回调State中的didChangeDependencies
  // 如果返回true: 执行依赖当期的InheritedWidget的State中的didChangeDependencies
  @override
  bool updateShouldNotify(LSPCounterWidget oldWidget) {
    return oldWidget.counter != counter;
  }
}

class HYHomePage extends StatefulWidget {
  const HYHomePage({super.key});

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: LSPCounterWidget(
          counter: _counter,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ShowData01(), ShowData02()],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}

class ShowData01 extends StatefulWidget {
  const ShowData01({super.key});

  @override
  State<ShowData01> createState() => _ShowData01State();
}

class _ShowData01State extends State<ShowData01> {

  @override
  Widget build(BuildContext context) {
    int count = LSPCounterWidget.of(context)?.counter ?? 0;
    return Card(
      color: Colors.red,
      child: Text("当前计数一: $count", style: const TextStyle(fontSize: 30),),
    );
  }
}

class ShowData02 extends StatelessWidget {
  const ShowData02({super.key});

  @override
  Widget build(BuildContext context) {
    int count = LSPCounterWidget.of(context)?.counter ?? 0;
    return Container(
      color: Colors.blue,
      child: Text("当前计数二: $count", style: const TextStyle(fontSize: 30),),
    );
  }
}
