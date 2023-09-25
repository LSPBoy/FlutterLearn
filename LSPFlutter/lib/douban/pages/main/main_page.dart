import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: [

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Image.asset("assets/images/tab/home.png",), activeIcon: Image.asset("assets/images/tab/home.png",), label: "首页"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/tab/home.png"), activeIcon: Image.asset("assets/images/tab/home.png"),label: "书音影"),
        ],
      ),
    );
  }
}
// tabbar/home.png