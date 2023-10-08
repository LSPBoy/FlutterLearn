import 'package:flutter/material.dart';
import "event_bus_init.dart";

// 1.创建全局的EventBus对象
class UserInfo {
  String nickname;
  int level;

  UserInfo(this.nickname, this.level);
}

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
        title: const Text("Demo"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LSPButton(),
            LSPText(),
          ],
        ),
      ),
    );
  }
}

class LSPButton extends StatelessWidget {
  const LSPButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      // 2.发出事件
      final info = UserInfo("李大锤", 18);
      eventBus.fire(info);
    }, child: const Text("按钮", style: TextStyle(fontSize: 20, color: Colors.red),));
  }
}

class LSPText extends StatefulWidget {
  const LSPText({super.key});

  @override
  State<LSPText> createState() => _LSPTextState();
}

class _LSPTextState extends State<LSPText> {
  String _message = "Hello World";

  @override
  void initState() {
    super.initState();

    // 3.监听事件的类型
    eventBus.on<UserInfo>().listen((event) {
      print(event.nickname);
      print(event.level);
      setState(() {
        _message = "${event.nickname}-${event.level}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(_message, style: const TextStyle(fontSize: 20),);
  }
}
