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
    return Scaffold(
      appBar: AppBar(
        title: const Text("列表测试"),
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
    return const ListViewDemo3();
  }
}

class ListViewDemo3 extends StatelessWidget {
  const ListViewDemo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
          itemBuilder: (BuildContext ctx, int index) {
            return Text(
              "Hello World ${index + 1}",
              style: const TextStyle(fontSize: 20),
            );
          },
          separatorBuilder: (BuildContext ctx, int index) {
            return const Divider(
              color: Colors.grey,
              thickness: 10,
              indent: 30,
              endIndent: 30,
              height: 60,
            );
          },
          itemCount: 100),
    );
  }
}

class ListViewDemo2 extends StatelessWidget {
  const ListViewDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemExtent: 60,
        itemCount: 100,
        itemBuilder: (BuildContext ctx, int index) {
          return Text(
            "Hello World ${index + 1}",
            style: const TextStyle(fontSize: 20),
          );
        });
  }
}

class ListViewDemo1 extends StatelessWidget {
  const ListViewDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      // reverse: true,
      // primary: true,
      // itemExtent: 100,
      children: List.generate(100, (index) {
        return ListTile(
          leading: const Icon(Icons.people),
          trailing: const Icon(Icons.delete),
          title: Text(
            "联系人${index + 1}",
            style: const TextStyle(fontSize: 20),
          ),
          subtitle: const Text(
            "电话：188123413131",
            style: TextStyle(fontSize: 20),
          ),
        );
      }),
    );
  }
}
