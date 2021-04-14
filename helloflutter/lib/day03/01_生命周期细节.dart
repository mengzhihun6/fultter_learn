import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JGHomePage(),
    );
  }
}

class JGHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: JGHomeContent(),
    );
  }
}

//StatelessWidget生命周期
// class JGHomeContent extends StatelessWidget {
//
//   String message;
//
//   JGHomeContent(this.message) {
//     print("构造函数被调用");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print("调用build方法");
//     return Text(message);
//   }
// }

// StatefulWidget的生命周期
class JGHomeContent extends StatefulWidget {
  HYHomeContent() {
    print("1.调用HYHomeContent的constructor方法");
  }

  @override
  _JGHomeContentState createState() {
    print("2.调用HYHomeContent的createState方法");
    return _JGHomeContentState();
  }
}

class _JGHomeContentState extends State<JGHomeContent> {
  int _counter = 0;
  _JGHomeContentState() {
    print("3.调用_HYHomeContentState的constructor方法");
  }

  @override
  void initState() {
    // 调用: 这里是必须调用super
    final TextStyle style = TextStyle();

    super.initState();
    print("4.调用_HYHomeContentState的initState方法");
  }

  @override
  void didUpdateWidget(JGHomeContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("调用_HYHomeContentState的didChangeDependencies方法");
  }

  @override
  Widget build(BuildContext context) {
    print("5.调用_HYHomeContentState的build方法");
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ),
        Text("数字:$_counter")
      ],
    );
  }

  @override
  void dispose() {
    print("6.调用_HYHomeContentState的dispose方法");
    super.dispose();
  }
}
