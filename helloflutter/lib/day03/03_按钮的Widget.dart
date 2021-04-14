import 'package:flutter/material.dart';

//ButtonDemo
class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //1、RaisedButton
        RaisedButton(
            child: Text("RaisedButton"),
            textColor: Colors.white,
            color: Colors.blueAccent,
            onPressed: (){
              print("RaisedButton");
            }),

        //2、FlatButton
        FlatButton(
            child: Text("FlatButton"),
            color: Colors.orange,
            onPressed: (){
              print("FlatButton");
            }),

        //3、OutlineButton
        OutlineButton(
            child: Text("OutlineButton"),
            onPressed: (){
              print("OutlineButton");
            }),

        //4、floatingActionButton


        //5、自定义button图标-文字-背景-圆角
        FlatButton(
            color: Colors.amberAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite,color: Colors.red,),
                Text("喜欢作者")
              ],
            ),
            onPressed: (){
              print("FlatButton");
            }),
      ],
    );
  }
}
