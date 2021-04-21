import 'package:flutter/material.dart';
import 'package:helloflutter/douban/utils/jglog.dart';
import 'home_movie_item.dart';
// import 'package:helloflutter/service/home_request.dart';

class JGHomeContent extends StatefulWidget {
  @override
  _JGHomeContentState createState() => _JGHomeContentState();
}

class _JGHomeContentState extends State<JGHomeContent> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // HomeRequest.requestMovieList(0);

    jgLog("------", StackTrace.current);
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (ctx, index) {
          return JGHomeMovieItem();
        }
    );
  }
}
