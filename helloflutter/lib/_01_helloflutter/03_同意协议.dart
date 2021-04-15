import 'package:flutter/material.dart';

main() => runApp(MyApp());

/**
 * Widget:
 * 有状态的Widget: StatefulWidget 在运行过程中有一些状态(data)需要改变
 * 无状态的Widget: StatelessWidget 内容是确定没有状态(data)的改变
 */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: JGHomePage()
    );
  }
}

class JGHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("第一个flutter程序"),
        ),
        body: JGContentBody()
    );
  }
}


// class JGContentBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children:<Widget> [
//           Checkbox(
//               value: true,
//               onChanged: (value) {
//                 print(value);
//               }
//           ),
//           Text("同意协议",style: TextStyle(fontSize: 20),)
//         ],
//       ),
//     );
//   }
// }

// StatefullWidget: 继承自StatefulWidget的类(可以接收父Widget传过来的数据)/State类(状态)
// flag: 状态
// Stateful不能定义状态 -> 创建一个单独的类, 这个类负责维护状态
class JGContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return JGContentBodyState();
  }
}

class JGContentBodyState extends State<JGContentBody> {

  var flag = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Checkbox(
              value: flag,
              onChanged: (value) {
                setState(() {
                  flag = value;
                });
              }
          ),
          Text("同意协议",style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
