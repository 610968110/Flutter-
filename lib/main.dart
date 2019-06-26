import 'package:flutter/material.dart';
import 'MyAppBar.dart';
import 'F01动画.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new MaterialApp(
        title: "flutter learn",
//        theme: new ThemeData.dark(),
        home: Scaffold(
          appBar: new MyAppBar("flutter"),
          body: new HomeBody(),
        ),
      );
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Button("动画", context, new F01Animator()),
        ],
      ),
    );
  }
}

class Button extends RaisedButton {
  Button(String text, BuildContext context, StatelessWidget widget)
      : super(
          child: new Text(text),
          //跳转页面
          onPressed: () => Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => widget),
              ),
        );
}
