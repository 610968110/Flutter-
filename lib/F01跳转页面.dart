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

//和Android相似，您可以在AndroidManifest.xml中声明您的Activities，在Flutter中，您可以将具有指定Route的Map传递到顶层MaterialApp实例
//
//void main() {
//  runApp(new MaterialApp(
//    home: new MyAppHome(), // becomes the route named '/'
//    routes: <String, WidgetBuilder> {
//      '/a': (BuildContext context) => new MyPage(title: 'page A'),
//      '/b': (BuildContext context) => new MyPage(title: 'page B'),
//      '/c': (BuildContext context) => new MyPage(title: 'page C'),
//    },
//  ));
//}
//然后，您可以通过Navigator来切换到命名路由的页面。
//
//Navigator.of(context).pushNamed('/b');

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
