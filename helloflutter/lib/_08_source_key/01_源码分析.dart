import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // BuildContext context -> Element
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
  @override
  Widget build(BuildContext context) {
    // 1.自己写Widget
    // 2.某些Widget中会创建RenderObject
    // 3.每一个Widget都会创建一个Element对象
    // 4.1.ComponentElement: mount方法 -> firstBuild -> rebuild -> performBuild -> build -> _widget.build
    // 4.2.RenderObjectElement: mount方法 -> _widget.createRenderObject
    // 4.3.StatefulElement:
    // * 构造方法中 _state = widget.createState()
    // * _state._widget = widget;

    // 所有的Widget都会创建一个对应的Element对象
//    StatelessElement;
//    StatefulElement;

    // 组件Widget: 不会生成RenderObject
    // Container -> StatelessWidget -> Widget
//    Container();
//    Text();
//    HYHomeContent();

    // 创建Element: RenderObjectElement
    // 渲染Widget: 生成RenderObject
    // Padding -> SingleChildRenderObjectWidget -> RenderObjectWidget(createRenderObject) -> Widget
    // Padding -> createRenderObject -> RenderPadding -> RenderBox -> RenderObject
//    Padding();
//    RenderObjectWidget

    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: JGHomeContent(),
    );
  }
}

class JGHomeContent extends StatefulWidget {
  @override
  _JGHomeContentState createState() => _JGHomeContentState();
}

class _JGHomeContentState extends State<JGHomeContent> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
