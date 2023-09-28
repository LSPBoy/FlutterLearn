
import 'package:flutter/material.dart';
import '../about_page.dart';
import '../01_rounterDemo.dart';
import '../detail_page.dart';
import '../unknown_page.dart';

class LSPRounter {
  static final Map<String, WidgetBuilder> routes = {
    LSPAbountPage.routeName: (ctx) => LSPAbountPage()
  };

  static const String initialRoute = HYHomePage.routeName;

  static final RouteFactory generateRoute = (settings) {
    if (settings.name == DetailPage.routeName) {
      return MaterialPageRoute(
          builder: (ctx) {
            final message = (settings.arguments as String);
            return DetailPage(message: message);
          }
      );
    }
    return null;
  };


  static final RouteFactory? unknownRoute = (settings) {
    return MaterialPageRoute(
        builder: (ctx) {
          return LSPUnknownPage();
        }
    );
  };


}