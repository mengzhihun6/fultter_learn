import 'package:flutter/cupertino.dart';
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
        title: Text("基础Widget"),
      ),
      body: JGHomeContent(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("FloatingActionButton Click"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


class JGHomeContent extends StatefulWidget {
  @override
  _JGHomeContentState createState() => _JGHomeContentState();
}

class _JGHomeContentState extends State<JGHomeContent> {

  bool toggle = true;

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return Container(
          margin: EdgeInsets.all(10),
          width: 100,
          height: 100,
          color: Colors.yellowAccent,
          alignment: Alignment.center,
          child: Text('Toggle One',style: TextStyle(fontSize: 15,color: Colors.red),)
      );
    } else {
      return Container(
        margin: EdgeInsets.all(10),
        // padding: EdgeInsets.all(10),
        width: 100,
        height: 100,
        color: Colors.greenAccent,
        child: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          child: Text('Toggle Two',style: TextStyle(fontSize: 15,color: Colors.red),),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _getToggleChild(),
        SizedBox(height: 30,),
        FloatingActionButton(
            tooltip: "Update Text",
            child: Icon(Icons.update),
            onPressed: _toggle
        )
      ],
    );
  }
}
