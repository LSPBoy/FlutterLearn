
import 'package:flutter/material.dart';
import 'package:lsp_flutter/douban/pages/home/home_content.dart';

class LSPHomePage extends StatelessWidget {
  const LSPHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("首页", style: TextStyle(color: Colors.orange),), backgroundColor: Colors.red,),
      body: LSPHomeContent(),
    );
  }
}
