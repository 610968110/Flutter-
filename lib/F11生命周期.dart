import 'package:flutter/material.dart';
import 'package:flutter_learn/base/BaseApp.dart';

main() => runApp(BaseApp(HomePager()));

class HomePager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePagerState();
}

class HomePagerState extends State<HomePager> with WidgetsBindingObserver {
  AppLifecycleState _lastLifecyleState;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      Center(child: Text("LALALA -> ${_lastLifecyleState.toString()}"));

//  @override
//  void didChangeDependencies() {
//    print('~~~~~ didChangeDependencies');
//    super.didChangeDependencies();
//  }
//
//  @override
//  void didUpdateWidget(HomePager oldWidget) {
//    print('~~~~~ didUpdateWidget -> $oldWidget');
//    super.didUpdateWidget(oldWidget);
//  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        // 应用程序处于非活动状态，并且未接收用户输入。此事件在Android上未使用，仅适用于iOS
        print('~~~~~ AppLifecycleState.inactive');
        break;
      case AppLifecycleState.paused:
        // 应用程序当前对用户不可见，不响应用户输入，并在后台运行。这是来自Android的暂停
        print('~~~~~ AppLifecycleState.paused');
        break;
      case AppLifecycleState.resumed:
        // 应用程序可见并响应用户输入。这是来自Android的onResume
        print('~~~~~ AppLifecycleState.resumed');
        break;
      case AppLifecycleState.suspending:
        // 该应用程序将暂时中止。这在iOS上未使用
        print('~~~~~ AppLifecycleState.suspending');
        break;
      default:
        print("~~~~~ AppLifecycleState.state -> $state");
        break;
    }
    setState(() {
      _lastLifecyleState = state;
    });
  }
}
