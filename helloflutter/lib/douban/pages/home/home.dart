import 'package:flutter/material.dart';

import 'home_content.dart';

class JGHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: JGHomeContent(),
    );
  }
}

//      body: Image.asset("images/tabbar/${iconName}.png",width: 32,);