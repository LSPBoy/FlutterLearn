import 'package:flutter/material.dart';

class LSPModalPage extends StatelessWidget {
  const LSPModalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text("Modal Page Title"),
      ),
      body: const Center(
        child: Text("Modal Page Body"),
      ),
    );
  }
}
