import 'package:flutter/material.dart';
import 'package:lsp_flutter/service/http_request.dart';

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
  void initState() {
    super.initState();

    //发送网络请求
    //1.创建Dio对象
    // final dio = Dio();
    // dio.get("https://httpbin.org/get").then((value) {
    //   print("get====$value");
    // });
    //
    // dio.post("https://httpbin.org/post").then((value) {
    //   print("post====$value");
    // });

    HttpRequest.request("https://httpbin.org/get", params: {"name": "why"}).then((res) {
      print("get====$res");
    }).catchError((error) {
      print("getError===$error");
    });

    HttpRequest.request("https://httpbin.org/post", method: "post",params: {"name": "why"}).then((res) {
      print("post====$res");
    }).catchError((error) {
      print("postError===$error");
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
