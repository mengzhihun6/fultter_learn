import 'package:dio/dio.dart';
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
          title: Text("基础Widget"),
        ),
        body: JGHomePageBody()
    );
  }
}

class JGHomePageBody extends StatefulWidget {
  @override
  _JGHomePageBodyState createState() => _JGHomePageBodyState();
}

class _JGHomePageBodyState extends State<JGHomePageBody> {

 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // final dio = Dio();
    //
    // dio.get("https://httpbin.org/get").then((value){
    //   print(value);
    // });
    //
    // dio.post("https://httpbin.org/post").then((value){
    //   print(value);
    // });


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello World"),
    );
  }
}
