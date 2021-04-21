import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';


class UserInfo {
  String nickname;
  int level;
  UserInfo(this.nickname,this.level);
}

// 1.创建全局的EventBus对象
final eventBus = EventBus();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: JGHomePage(),
    );
  }
}

class JGHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("point"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            JGButton(),
            JGText()
          ],
        ),
      ),
    );
  }
}


class JGButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("按钮"),
        onPressed: (){
          // 2.发出事件
          final info = UserInfo("大军哥", 28);
          eventBus.fire(info);
        }
    );
  }
}


class JGText extends StatefulWidget {
  @override
  _JGTextState createState() => _JGTextState();
}

class _JGTextState extends State<JGText> {

  String _message = "hello World";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // 3.监听事件的类型
    eventBus.on<UserInfo>().listen((data) {
      print(data.nickname);
      print(data.level);

      setState(() {
        _message = "${data.nickname} - ${data.level}";
      });


    });


  }


  @override
  Widget build(BuildContext context) {
    return Text(_message,style: TextStyle(fontSize: 20,color: Colors.red),);
  }
}
