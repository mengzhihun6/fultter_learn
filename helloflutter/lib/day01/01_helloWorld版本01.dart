import 'package:flutter/material.dart';

main(){

  //1、runApp函数
  runApp(
      MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text("第一个flutter程序"),
            ),
            body: Center(
              child: Text(
                "hello world",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange
                ),
              ),
            ),
          )
      )
  );
}
