import 'package:flutter/material.dart';

class ImageDemo02 extends StatelessWidget {
  const ImageDemo02({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("images/juren.jpeg",width: 300,height: 200,fit: BoxFit.fill,);
  }
}

//ImageDemo1
class ImageDemo1 extends StatelessWidget {
  const ImageDemo1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
        width: 200,
        height: 200,
        fit: BoxFit.fitWidth,
        // alignment: Alignment.center,
        repeat: ImageRepeat.repeatY,
//      alignment: Alignment.bottomCenter,
//    范围: -1 1
        alignment: Alignment(0, 0),
        image: NetworkImage("http://img0.dili360.com/ga/M01/48/3C/wKgBy1kj49qAMVd7ADKmuZ9jug8377.tub.jpg")
    );
  }
}
