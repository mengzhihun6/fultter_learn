import 'package:flutter/material.dart';

import '../unknown.dart';
import '../about.dart';
import '../detail.dart';
import '../main.dart';


class JGRouter {

  static final Map<String,WidgetBuilder> routers = {
    JGHomePage.routeName: (ctx) => JGHomePage(),
    JGAboutPage.routeName: (ctx) => JGAboutPage(),
  };

  static final String initialRoute = JGHomePage.routeName;

  static final RouteFactory generateRoute = (settings){
    if (settings.name == JGDetailPage.routeName) {
      return MaterialPageRoute(
          builder: (ctx){
            return JGDetailPage(settings.arguments);
          }
      );
    }
    return null;
  };


  static final RouteFactory unknownRoute = (settings) {
    return MaterialPageRoute(
        builder: (ctx) {
          return JGUnKnownPage();
        }
    );
  };


}
