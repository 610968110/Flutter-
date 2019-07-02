import 'package:flutter/material.dart';
import 'package:flutter_learn/base/MyAppBar.dart';

class F01Animator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: MyAppBar("01"),
      body: new MyAnimatorWidget(),
    );
  }
}

class MyAnimatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAnimatorWidgetState();
}

class MyAnimatorWidgetState extends State<MyAnimatorWidget>
    with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
          child: new Container(
              child: new FadeTransition(
                  opacity: curve,
                  child: new FlutterLogo(
                    size: 100.0,
                  )))),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Fade',
        child: new Icon(Icons.brush),
        onPressed: () {
          controller.forward();
        },
      ),
    );
  }
}


