

import 'package:flutter/material.dart';
import 'package:helloflutter/douban/pages/subject/subject.dart';
import 'package:helloflutter/douban/pages/home/home.dart';

import 'bottom_bar_item.dart';

List<JGBottomBarItem> items = [
  JGBottomBarItem("home", "首页"),
  JGBottomBarItem("subject", "书影音"),
  JGBottomBarItem("group", "小组"),
  JGBottomBarItem("mall", "市集"),
  JGBottomBarItem("profile", "我的"),
];

List<Widget> pages = [
  JGHomePage(),
  JGSubjectPage(),
  JGSubjectPage(),
  JGSubjectPage(),
  JGSubjectPage(),
];
