import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: JGHomePage(),
    );
  }
}

class JGHomePage extends StatelessWidget {
  final String title = "列表测试";
  final GlobalKey<_JGHomeContentState> homeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: JGHomeContent(key: homeKey),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.gesture),
        onPressed: () {
          print(homeKey.currentState.message);
          print(homeKey.currentState.widget.name);
          homeKey.currentState.test();
        },
      ),
    );
  }
}

class JGHomeContent extends StatefulWidget {
  final String name = "jun";

  JGHomeContent({Key key}): super(key: key);

  @override
  _JGHomeContentState createState() => _JGHomeContentState();
}

class _JGHomeContentState extends State<JGHomeContent> {
  final String message = "123";

  void test() {
    print("junjunjun");
  }

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
