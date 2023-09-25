import 'package:flutter/material.dart';

void main() {
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

class HYHomePage extends StatefulWidget {
  const HYHomePage({super.key});

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  final ScrollController _controller = ScrollController(initialScrollOffset: 300);
  bool _isShowFloatingBtn = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print("监听到滚动：${_controller.offset}");
      setState(() {
        _isShowFloatingBtn = _controller.offset >= 1000;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    /**
     * 两种方式可以监听:
     *  controller:
     *    1.可以设置默认值offset
     *    2.监听滚动, 也可以监听滚动的位置，但是不能监听开始滚动和结束滚动
     *  NotificationListener
     *    1.开始滚动和结束滚动
     */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: NotificationListener(
        onNotification: (ScrollNotification notification) {
          // print("NotificationListener监听滚动");
          if (notification is ScrollStartNotification) {
            print("开始滚动...");
          } else if (notification is ScrollUpdateNotification) {
            print("正在滚动...总滚动距离：${notification.metrics.maxScrollExtent}  当前滚动的位置${notification.metrics.pixels}");
          } else if (notification is ScrollEndNotification) {
            print("结束滚动...");
          }
          return true;
        },
        child: ListView.builder(
            controller: _controller,
            itemCount: 100,
            itemBuilder: (BuildContext ctx, int index) {
              return ListTile(
                leading: Icon(Icons.people),
                title: Text("联系人$index"),
              );
            }),
      ),
      floatingActionButton: _isShowFloatingBtn ? FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          _controller.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
        },
      ) : null,
    );
  }
}
