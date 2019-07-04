import 'package:flutter/material.dart';
import 'package:flutter_learn/base/BaseApp.dart';

main() => runApp(new BaseApp(new HomePager()));

class HomePager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var loadingPager = new LoadingPager();
    return new Column(
      children: <Widget>[
        new Row(children: <Widget>[
          new Expanded(
              child: new RaisedButton(
                  onPressed: () => loadingPager.setShow(true),
                  child: new Text("显示"))),
          new Expanded(
              child: new RaisedButton(
                  onPressed: () => loadingPager.setShow(false),
                  child: new Text("隐藏"))),
        ]),
        loadingPager,
      ],
    );
  }
}

class LoadingPager extends StatefulWidget {
  var _loadingPagerState = new LoadingPagerState();

  @override
  State<StatefulWidget> createState() {
    return _loadingPagerState;
  }

  setShow(bool show) => _loadingPagerState.setShow(show);
}

class LoadingPagerState extends State<LoadingPager> {
  var _isShow = false;
  var _progressIndicator = new CircularProgressIndicator();
  var _container = new Container();

  @override
  Widget build(BuildContext context) => new Expanded(
      child: new Center(child: _isShow ? _progressIndicator : _container));

  setShow(bool show) {
    setState(() {
      _isShow = show;
    });
  }
}
