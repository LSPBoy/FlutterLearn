import 'package:flutter/material.dart';
import 'pages/modal_page.dart';


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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
     floatingActionButton: FloatingActionButton(
       child: const Icon(Icons.arrow_upward),
       onPressed: () {
         //1、第一种Modal方式fullscreenDialog设置true 和iOS-->Modal方式
         // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
         //   return const LSPModalPage();
         // }, fullscreenDialog: true));

         //2、通过PageRouteBuilder
         Navigator.of(context).push(PageRouteBuilder(pageBuilder: (ctx, animation1, animation2) {
           return FadeTransition(opacity: animation1, child: LSPModalPage(),);
         }));

       },
     ),
    );
  }
}