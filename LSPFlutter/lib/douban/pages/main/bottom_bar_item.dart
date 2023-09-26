import 'package:flutter/material.dart';

class LSPBottomBarItem extends BottomNavigationBarItem {
  LSPBottomBarItem(String iconName, String title)
      : super(
      label: title,
      icon: Image.asset("assets/images/tab/$iconName.png", width: 32, gaplessPlayback: true,),
      activeIcon: Image.asset("assets/images/tab/${iconName}_active.png", width: 32, gaplessPlayback: true,));
}