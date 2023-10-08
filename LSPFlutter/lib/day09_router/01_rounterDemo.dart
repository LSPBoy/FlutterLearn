import 'package:flutter/material.dart';
import 'about_page.dart';
import 'detail_page.dart';
import 'rounterconfig/rounter_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HYHomePage(),
      theme: ThemeData(primarySwatch: Colors.green, splashColor: Colors.red),
      routes: LSPRounter.routes,
      initialRoute: LSPRounter.initialRoute,
      onGenerateRoute: LSPRounter.generateRoute,
      onUnknownRoute: LSPRounter.unknownRoute,
    );
  }
}

class HYHomePage extends StatefulWidget {

  static const String routeName = "/";

  const HYHomePage({super.key});

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  String _homeMessage = "default message";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_homeMessage, style: const TextStyle(fontSize: 20, color:Colors.purple),),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.greenAccent),
              onPressed: () => _jumpToDetail(context),
              child: const Text("跳转到详情"),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.greenAccent),
              onPressed: () => _jumpToDetails2(context),
              child: const Text("跳转到详情2"),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.greenAccent),
              onPressed: () => _jumpToAbout(context),
              child: const Text("跳转到关于"),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.greenAccent),
              onPressed: () => _jumpToSettings(context),
              child: const Text("跳转到设置"),
            ),
          ],
        ),
      ),
    );
  }

  // 1.普通的跳转方式
  // 传递参数: 通过构造器直接传递即可
  void _jumpToDetail(BuildContext context) {
    // 1.普通的跳转方式
    // 传递参数: 通过构造器直接传递即可
    // Navigator.push(context, route)
    Future result = Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) {
          return const DetailPage(message: "首页信息");
        }
    ));

    result.then((res) {
      setState(() {
        _homeMessage = res;
      });
    });
  }

  void _jumpToAbout(BuildContext context) {
    Navigator.of(context).pushNamed(LSPAbountPage.routeName, arguments: "a home message");
  }

  void _jumpToDetails2(BuildContext context) {
    Navigator.of(context).pushNamed(DetailPage.routeName, arguments: "a home detail2 message");
  }

  void _jumpToSettings(BuildContext context) {
    Navigator.of(context).pushNamed("/setting");
  }


}

