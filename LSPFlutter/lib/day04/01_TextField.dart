import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
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
        title: const Text("商品列表"),
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
    return TextFieldDemo();
  }
}

class TextFieldDemo extends StatelessWidget {
  TextFieldDemo({super.key});

  final _usernameTextEditController = TextEditingController();
  final _passwordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(data: ThemeData(primarySwatch: Colors.red), child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextField(
            controller: _usernameTextEditController,
            decoration: const InputDecoration(
              labelText: "用户名",
              icon: Icon(Icons.people),
              hintText: "请输入用户名",
              border: InputBorder.none, //OutlineInputBorder()
              filled: true,
              fillColor: Colors.grey,),
            onChanged: (value) {
              print("onChanged:$value");
            },
            onSubmitted: (value) {
              print("onSubmitted:$value");
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _passwordTextEditController,
            decoration: const InputDecoration(
              labelText: "password",
              icon: Icon(Icons.lock),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              height: 50,
              child: TextButton(
                  onPressed: () {
                    //1、获取用户名和密码
                    final username = _usernameTextEditController.text;
                    final password = _passwordTextEditController.text;
                    print("账号：$username, 密码$password");
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text(
                    "登录",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )))
        ],
      ),
    ));
  }
}
