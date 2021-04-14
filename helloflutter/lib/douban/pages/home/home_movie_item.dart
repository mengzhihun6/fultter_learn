import 'dart:math';

import 'package:flutter/material.dart';
import 'package:helloflutter/douban/widgets/dashed_line.dart';
import 'package:helloflutter/douban/widgets/star_rating.dart';

class JGHomeMovieItem extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration (
        border: Border(bottom: BorderSide(width: 8,color: Color(0xffcccccc)))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          SizedBox(height: 8,),
          buildContent(),
          SizedBox(height: 8,),
          buildFooter(),
        ],
      ),
    );
  }

  //1.头部布局
  Widget buildHeader(){
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        "NO.${Random().nextInt(100)}",
        style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }


  //2.内容的布局
  Widget buildContent(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        SizedBox(width: 8,),
        buildContentInfo(),
        SizedBox(width: 8,),
        buildContentLine(),
        SizedBox(width: 8,),
        buildContentWish(),
      ],
    );
  }

  //2.1内容的图片
  Widget buildContentImage() {
    final ImageUrl = "http://img0.dili360.com/ga/M01/48/3C/wKgBy1kj49qAMVd7ADKmuZ9jug8377.tub.jpg";
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        ImageUrl,
        width: 110,
        height: 150,
        fit: BoxFit.fitHeight,
      )
    );
  }

  //2.2内容信息
  Widget buildContentInfo(){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentInfoTitle(),
          SizedBox(height: 8,),
          buildContentInfoRate(),
          SizedBox(height: 8,),
          buildContentInfoDesc(),
        ],
      ),
    );
  }

  Widget buildContentInfoTitle(){
    return Text.rich(
        TextSpan(
          children: [
            WidgetSpan( child: Icon( Icons.play_circle_outline,
                  color: Colors.pink,
                  size: 30,
                ),
              baseline: TextBaseline.ideographic,
              alignment: PlaceholderAlignment.middle
            ),
            // WidgetSpan(child: Text(  "霸王别姬",
            //       style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
            //     ),
            //   alignment: PlaceholderAlignment.middle
            // ),
            ..."霸王别姬霸王别姬霸王别姬霸王".runes.map((rune) {
              return WidgetSpan(child: Text(new String.fromCharCode(rune), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), alignment: PlaceholderAlignment.middle);
            }).toList(),
            WidgetSpan( child: Text( "(1994)",
                  style: TextStyle(fontSize: 18,color: Colors.grey),
                ),
            )
          ]
        ),
    );
  }

  Widget buildContentInfoRate(){
    return Row(
      children: [
        JGStarRating(rating: 7.3,size: 20,),
        SizedBox(width: 6,),
        Text("7.3",style: TextStyle(fontSize: 16),)
      ],
    );
  }

  Widget buildContentInfoDesc(){
    return Text(
        "犯罪 爱情 / 张开不 / 范彬彬 / 郭宝胜 国策 张风天逸 攻速",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 16),
    );
  }

  //2.3内容的虚线
  Widget buildContentLine(){
    return Container(
      height: 100,
      child: JGDashedLine(
        axis: Axis.vertical,
        dashedWidth: .4,
        dashedHeight: 6,
        count: 10,
        color: Colors.pink,
      ),
    );
  }

  //2.4内容的想看
  Widget buildContentWish(){
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/home/wish.png"),
          Text("想看",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 235, 170, 60)
            ),
          )
        ],
      ),
    );
  }

  //3.尾部布局
  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text( "What is the equivalent of a UIView in Flutter?",
        style: TextStyle(fontSize: 20,color: Color(0xff666666)),
      ),
    );
  }


}
