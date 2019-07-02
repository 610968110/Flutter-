import 'package:flutter/material.dart';
import 'package:flutter_learn/base/BaseApp.dart';

main() => runApp(new BaseApp(new HomeBody()));

var i = 0;

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new DumpButton("页面${i++}", context, BaseHome(HomeBody())),
        ],
      ),
    );
  }
}

class DumpButton extends RaisedButton {
  DumpButton(String text, BuildContext context, StatelessWidget widget)
      : super(
          child: new Text(text),
          //跳转页面
          onPressed: () => Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => widget),
              ),
        );
}

//
///**
// * 利用SharedPreferences存储数据
// */
//Future saveString() async {
//  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//  sharedPreferences.setString("key", "value");
//  SharedPreferences.getInstance().then((sp) => sp.setString("k", "v"));
//  getString("key");
//  getString("k");
//}
//
///**
// * 获取存在SharedPreferences中的数据
// */
//Future getString(String key) async {
//  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//  var s = sharedPreferences.get(key);
//  debugPrint("~~~~~~~~~~~~~~$s");
//}
