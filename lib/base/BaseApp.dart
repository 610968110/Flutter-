import 'package:flutter/material.dart';
import 'MyAppBar.dart';

class BaseApp extends StatelessWidget {
  Widget body;

  BaseApp(this.body);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "flutter learn",
        theme: ThemeData.light(),
        home: BaseHome(body),
      );
}

class BaseHome extends StatelessWidget {
  Widget body;

  BaseHome(this.body);

  @override
  Widget build(BuildContext context) => new Scaffold(
        appBar: MyAppBar("flutter"),
        body: body,
      );
}
