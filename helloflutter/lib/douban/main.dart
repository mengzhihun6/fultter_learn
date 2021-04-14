import 'package:flutter/material.dart';
import 'pages/main/main.dart';


main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        splashColor: Colors.transparent
      ),
      home: JGMainPage(),
    );
  }
}
