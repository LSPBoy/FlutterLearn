
import 'package:flutter/material.dart';
import '../about_page.dart';
import '../01_rounterDemo.dart';
import '../detail_page.dart';
import '../unknown_page.dart';

class LSPRounter {
  static final Map<String, WidgetBuilder> routes = {
    LSPAbountPage.routeName: (ctx) => const LSPAbountPage()
  };

  static const String initialRoute = HYHomePage.routeName;

  static RouteFactory get generateRoute => (settings) {
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


  static RouteFactory get unknownRoute => (settings) {
    return MaterialPageRoute(
        builder: (ctx) {
          return const LSPUnknownPage();
        }
    );
  };


}