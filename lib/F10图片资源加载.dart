import 'package:flutter/material.dart';
import 'package:flutter_learn/base/BaseApp.dart';

main() => runApp(new BaseApp(new HomePager()));

class HomePager extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Column(children: <Widget>[
        new Image.asset("resource/images/img.png", width: 24.0, height: 24.0),
        new Image.network("http://106.13.16.137:8080/images/img.png", width: 24.0, height: 24.0),
      ]);
}
