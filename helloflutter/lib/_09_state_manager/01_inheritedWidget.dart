import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());


class JGCouterWidget extends InheritedWidget {

  // 1.共享的数据
  final int counter;

  // 2.定义构造方法
  // JGCouterWidget({Widget child}) : super(child: child);
  JGCouterWidget({this.counter, Widget child}): super(child: child);

  // 3.获取组件最近的当前InheritedWidget
  static JGCouterWidget of(BuildContext context) {
    // 沿着Element树, 去找到最近的HYCounterElement, 从Element中取出Widget对象
    return context.dependOnInheritedWidgetOfExactType();
  }

  // 4.绝对要不要回调State中的didChangeDependencies
  // 如果返回true: 执行依赖当期的InheritedWidget的State中的didChangeDependencies
  @override
  bool updateShouldNotify(JGCouterWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.counter != counter;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          splashColor: Colors.transparent
      ),
      home: JGHomePage(),
    );
  }
}

class JGHomePage extends StatefulWidget {
  @override
  _JGHomePageState createState() => _JGHomePageState();
}

class _JGHomePageState extends State<JGHomePage> {

  int _counter = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedWidget"),
      ),
      body: JGCouterWidget(
        counter: _counter,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              JGShowData01(),
              JGShowData02(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}

class JGShowData01 extends StatefulWidget {
  @override
  _JGShowData01State createState() => _JGShowData01State();
}

class _JGShowData01State extends State<JGShowData01> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("执行了_HYShowData01State中的didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    int counter = JGCouterWidget.of(context).counter;

    return Card(
      color: Colors.red,
      child: Text("当前计数:$counter", style: TextStyle(fontSize: 30)),
    );
  }
}

class JGShowData02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = JGCouterWidget.of(context).counter;

    return Card(
      color: Colors.blue,
      child: Text("当前计数:$counter", style: TextStyle(fontSize: 30)),
    );
  }
}
