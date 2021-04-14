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
          title: Text("商品列表")
      ),
      body: JGHomeContent(),
    );
  }
}

class JGHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:<Widget> [
        JGHomeProductItem("APPLE1", "MacBooK Product1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        SizedBox(height: 6),
        JGHomeProductItem("APPLE2", "MacBooK Product2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
        SizedBox(height: 6),
        JGHomeProductItem("APPLE3", "MacBooK Product3", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
      ],
    );
  }
}

class JGHomeProductItem extends StatelessWidget {

  final String title;
  final String desc;
  final String imageURL;

  final style1 = TextStyle(fontSize: 25,color: Colors.orange);
  final style2 = TextStyle(fontSize: 20,color: Colors.green);

  JGHomeProductItem(this.title,this.desc,this.imageURL);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
              width: 5,// 设置边框的宽度
              color: Colors.black12 // 设置边框的颜色
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Text(title,style: style1),
          SizedBox(height: 8),
          Text(desc,style: style2),
          SizedBox(height: 8),
          Image.network(imageURL)
        ],
      ),
    );
  }
}
