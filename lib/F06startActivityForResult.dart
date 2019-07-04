import 'package:flutter/material.dart';
import 'package:flutter_learn/base/BaseApp.dart';

main() => runApp(new BaseApp(new HomePager()));

class HomePager extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Center(
        child: new RaisedButton(
            child: new Text("跳转"), onPressed: () => dump(context)),
      );
}

void dump(BuildContext context) async {
  // 跳转并等待返回结果
  Map coordinates = await Navigator.of(context).push(new MaterialPageRoute(
      builder: (context) => new BaseHome(new HomePager2())));
  print("~~~~~~~~~$coordinates");
}

class HomePager2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Center(
        child: new RaisedButton(
            child: new Text("销毁"),
            // 返回结果放到pop()中
            onPressed: () => Navigator.of(context)
                .pop({"lat": 43.821757, "long": -79.226392})),
      );
}
