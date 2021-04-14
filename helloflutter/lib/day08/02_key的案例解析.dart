import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,splashColor: Colors.transparent
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
  List<String> names = ["aaa","bbb","ccc"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: ListView(
        children: names.map((item) {
          //若需要强制刷新，则可将key写成：UniqueKey()
        //   return ListItemFul(item, key: UniqueKey(),);
        // }).toList(),
          return ListItemFul(item,key: ValueKey(item),);
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: (){
          setState(() {
            names.removeAt(0);
          });
        },
      ),
    );
  }
}

class ListItemLess extends StatelessWidget {
  final String name;
  final Color randColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

  ListItemLess(this.name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80,
      color: randColor,
      alignment: Alignment.center,
      child: Text(name,style: TextStyle(color: Colors.white,fontSize: 20),),
    );
  }
}

class ListItemFul extends StatefulWidget {
  final String name;
  ListItemFul(this.name,{Key key}) : super(key: key);
  @override
  _ListItemFulState createState() => _ListItemFulState();
}

class _ListItemFulState extends State<ListItemFul> {
  final Color randColor = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80,
      color: randColor,
      alignment: Alignment.center,
      child: Text(widget.name,style: TextStyle(color: Colors.white,fontSize: 20),),
    );
  }
}
