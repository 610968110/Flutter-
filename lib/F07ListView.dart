import 'package:flutter/material.dart';
import 'package:flutter_learn/base/BaseApp.dart';

main() => runApp(new BaseApp(new MyListView()));

class MyListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyListViewState();
}

class MyListViewState extends State<MyListView> {
  var list = [];

  @override
  void initState() {
    super.initState();
    list.add("1");
    list.add("2");
  }

  @override
  Widget build(BuildContext context) => new ListView.separated(
        itemCount: list.length,
        itemBuilder: (context, index) =>
            new Item(list[index], addItem("${list.length}")),
        separatorBuilder: (context, index) => new Divider(
              color: Colors.blue,
              height: 1,
            ),
      );

  Function addItem(String text) {
    return () => setState(() {
          list.add(text);
        });
  }
}

class Item extends StatelessWidget {
  String text;
  Function func;

  Item(this.text, this.func);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Padding(
        padding: EdgeInsets.only(left: 15),
        child: new Container(
          height: 50,
          child:
              new Align(alignment: Alignment.centerLeft, child: new Text(text)),
          color: Colors.transparent,
        ),
      ),
      onTap: () => func(),
    );
  }
}
