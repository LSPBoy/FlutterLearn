import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("第一个Flutter程序"),
      ),
      body: const Center(
        child: Text(
          "Hello World",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
          ),
        ),
      ),
    ),
  ));
}