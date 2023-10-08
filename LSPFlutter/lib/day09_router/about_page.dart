
import 'package:flutter/material.dart';

class LSPAbountPage extends StatelessWidget {
  static const String routeName = "/abount";

  const LSPAbountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String message = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text("关于页"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("回到首页"),
              style: TextButton.styleFrom(backgroundColor: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
