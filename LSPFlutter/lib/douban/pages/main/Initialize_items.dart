import 'package:lsp_flutter/douban/pages/home/home.dart';
import 'package:lsp_flutter/douban/pages/subject/subject.dart';

import 'bottom_bar_item.dart';
import 'package:flutter/material.dart';

List<LSPBottomBarItem> bottomBarItems = [
  LSPBottomBarItem("home", "首页"),
  LSPBottomBarItem("subject", "书音影"),
  LSPBottomBarItem("group", "小组"),
  LSPBottomBarItem("mall", "市集"),
  LSPBottomBarItem("profile", "我的"),
];

List<Widget> pages = [
  LSPHomePage(),
  LSPSubjectPage(),
  LSPHomePage(),
  LSPHomePage(),
  LSPHomePage(),
];
