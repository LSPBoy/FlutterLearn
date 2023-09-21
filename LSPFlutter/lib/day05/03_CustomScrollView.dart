import 'dart:math';

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

class HYHomePage extends StatelessWidget {
  const HYHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text("列表测试"),
      // ),
      body: HYHomeContent(),
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
    return const CustomScrollViewDemo2();
  }
}

//ScrollView：buildSlivers抽象方法====》BoxScrollView和CustomScrollView，这两个子类必须实现buildSlivers
//BoxScrollView下面有ListView和GridView
class CustomScrollViewDemo1 extends StatelessWidget {
  const CustomScrollViewDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          //可以一直滑动到顶部
          sliver: SliverPadding(
            //SliverPadding上边距滑动没有留边
            padding: const EdgeInsets.all(8),
            sliver: SliverGrid(
                delegate:
                SliverChildBuilderDelegate((BuildContext ctx, int index) {
                  return Container(
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)),
                  );
                }, childCount: 100),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1.5)),
          ),
        ),
      ],
    );
  }
}

class CustomScrollViewDemo2 extends StatelessWidget {
  const CustomScrollViewDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Hello World"),
            background: Image.asset(
              "assets/images/girl.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate((BuildContext ctx, int index) {
              return Container(
                color: Color.fromARGB(255, Random().nextInt(256),
                    Random().nextInt(256), Random().nextInt(256)),
              );
            }, childCount: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2)),
        SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 100,
                    (BuildContext ctx, index) {
                  return ListTile(
                    leading: const Icon(Icons.people),
                    title: Text("联系人$index"),
                  );
                }))
      ],
    );
  }
}