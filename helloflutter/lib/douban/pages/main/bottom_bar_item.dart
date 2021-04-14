import 'package:flutter/material.dart';

class JGBottomBarItem extends BottomNavigationBarItem {

  JGBottomBarItem(String iconName,String title) : super(
    // title: Text(title),
    label: title,
    icon: Image.asset("images/tabbar/${iconName}.png",width: 32,gaplessPlayback: true,),
    activeIcon: Image.asset("images/tabbar/${iconName}_active.png",width: 32,gaplessPlayback: true,)
  );

}
