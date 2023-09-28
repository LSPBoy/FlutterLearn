import 'package:flutter/material.dart';

class LSPUnknownPage extends StatelessWidget {
  const LSPUnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("错误页面"),
      ),
      body: const Center(
        child: Text("发生未知错误", style: TextStyle(fontSize: 20, color: Colors.red),),
      ),
    );
  }
}
