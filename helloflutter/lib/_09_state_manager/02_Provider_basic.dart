import 'package:flutter/material.dart';
import 'viewmodel/counter_view_model.dart';
import 'package:provider/provider.dart';
import 'viewmodel/initialize_providers.dart';
import 'viewmodel/uesr_view_model.dart';

/**
 * 1.创建自己需要共享的数据
 * 2.在应用程序的顶层ChangeNotifierProvider
 * 3.在其它位置使用共享的数据
 *  > Provider.of: 当Provider中的数据发生改变时, Provider.of所在的Widget整个build方法都会重新构建
 *  > Consumer(相对推荐): 当Provider中的数据发生改变时, 执行重新执行Consumer的builder
 *  > Selector: 1.selector方法(作用,对原有的数据进行转换) 2.shouldRebuild(作用,要不要重新构建)
 */

void main() {
  // 2.在应用程序的顶层ChangeNotifierProvider
  runApp(ChangeNotifierProvider(
    create: (ctx) => JGCounterViewModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: JGHomePage(),
    );
  }
}

class JGHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              JGShowData01(),
              JGShowData02(),
              JGShowData03(),
            ],
          ),
        ),
        floatingActionButton: Selector<JGCounterViewModel, JGCounterViewModel>(
          selector: (ctx, counterVM) => counterVM,
          shouldRebuild: (prev, next) => false,
          builder: (ctx, counterVM, child) {
            print("floatingActionButton build方法被执行");
            return FloatingActionButton(
              child: child,
              onPressed: () {
                counterVM.counter += 1;
              },
            );
          },
          child: Icon(Icons.add),
        ));
  }
}

class JGShowData01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 3.在其它位置使用共享的数据
    int counter = Provider.of<JGCounterViewModel>(context).counter;

    print("data01的build方法");

    return Card(
      color: Colors.red,
      child: Text("当前计数:$counter", style: TextStyle(fontSize: 30)),
    );
  }
}

class JGShowData02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("data02的build方法");

    return Container(
      color: Colors.red,
      child: Consumer<JGCounterViewModel>(
        builder: (ctx, counterVM, child) {
          print("data02 Consumer build方法被执行");
          return Text("当前计数:${counterVM.counter}",
              style: TextStyle(fontSize: 30));
        },
      ),
    );

    // return Card(
    //   color: Colors.blue,
    //   child: Text("当前计数:100", style: TextStyle(fontSize: 30)),
    // );
  }
}

class JGShowData03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider.of Consumer Selector Consumer2
    return Consumer2<JGUserViewModel, JGCounterViewModel>(
      builder: (ctx, userVM, counterVM, child) {
        return Text(
          "nickname:${userVM.user.nickname} counter:${counterVM.counter}",
          style: TextStyle(fontSize: 30),
        );
      },
    );
  }
}
