import 'package:flutter/material.dart';

//2、 TextRichDemo
class TextRichDemo extends StatelessWidget {
  const TextRichDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
          // text: "Hello World",
          // style: TextStyle(color: Colors.red,fontSize: 25),
            children: [
              TextSpan(text: "Hello World",style: TextStyle(color: Colors.red,fontSize: 20)),
              TextSpan(text: "Hello Flutter",style: TextStyle(color: Colors.green,fontSize: 20)),
              WidgetSpan(child: Icon(Icons.favorite,color: Colors.red,)),
              TextSpan(text: "Hello Dart",style: TextStyle(color: Colors.blueAccent,fontSize: 20)),
            ]
        )
    );
  }
}

// Text Widget
class TextDemo extends StatelessWidget {
  const TextDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "《定风波》 苏轼 莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 25,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
