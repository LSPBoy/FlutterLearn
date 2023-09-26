import 'package:flutter/material.dart';
import 'package:lsp_flutter/douban/pages/main/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent),
      home: MainPage(),
    );
  }
}
