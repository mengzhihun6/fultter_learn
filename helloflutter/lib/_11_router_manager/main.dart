import 'package:flutter/material.dart';
import 'package:helloflutter/_11_router_manager/router/router.dart';
import 'unknown.dart';
import 'about.dart';
import 'detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent
      ),
      routes: JGRouter.routers,
      initialRoute: JGRouter.initialRoute,
      onGenerateRoute: JGRouter.generateRoute,
      onUnknownRoute: JGRouter.unknownRoute,
      // routes: {
      //   JGHomePage.routeName: (ctx) => JGHomePage(),
      //   JGAboutPage.routeName: (ctx) => JGAboutPage(),
      // },
      // home: JGHomePage(),
      // initialRoute: JGHomePage.routeName,
      // onGenerateRoute: (settings){
      //   if (settings.name == JGDetailPage.routeName) {
      //     return MaterialPageRoute(
      //         builder: (ctx){
      //           return JGDetailPage(settings.arguments);
      //         }
      //     );
      //   }
      //   return null;
      // },
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(
      //       builder: (ctx) {
      //         return JGUnKnownPage();
      //       }
      //   );
      // },
    );
  }
}

class JGHomePage extends StatefulWidget {

  static const String routeName = "/";

  @override
  _JGHomePageState createState() => _JGHomePageState();
}

class _JGHomePageState extends State<JGHomePage> {
  String _homeMessage = "default message";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _homeMessage,
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            RaisedButton(
              child: Text("跳转到详情"),
              onPressed: () => _jumpToDetail(context),
            ),
            RaisedButton(
              child: Text("跳转到关于"),
              onPressed: () => _jumpToAbout(context),
            ),
            RaisedButton(
              child: Text("跳转到详情"),
              onPressed: () => _jumpToDetail2(context),
            ),
            RaisedButton(
              child: Text("跳转到设置"),
              onPressed: () => _jumpToSetting(context),
            ),
          ],
        ),
      ),
    );
  }

  void _jumpToDetail(BuildContext context) {
    // 1.普通的跳转方式
    // 传递参数: 通过构造器直接传递即可
    Future result =
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return JGDetailPage("a home message");
    }));

    result.then((res) => {
          setState(() {
            _homeMessage = res;
          })
        });
  }


  void _jumpToAbout(BuildContext context) {
    Navigator.of(context).pushNamed(JGAboutPage.routeName,arguments: "a home message");
  }

  void _jumpToDetail2(BuildContext context) {
    Navigator.of(context).pushNamed(JGDetailPage.routeName,arguments: "a detail2 message");
  }

  void _jumpToSetting(BuildContext context) {
    Navigator.of(context).pushNamed("/abc");
  }

}
