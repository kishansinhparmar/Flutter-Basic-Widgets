import 'package:flutter/material.dart';

class IndexedStackDemo extends StatefulWidget {
  static final String routeName = "/indexedDemo";
  @override
  _IndexedStackDemoState createState() => new _IndexedStackDemoState();
}

class _IndexedStackDemoState extends State<IndexedStackDemo> {
  TextEditingController _controller = new TextEditingController();
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("IndexedStack Demo")),
        body: new Padding(
          padding: const EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Chnage stack widget by index(0-2)"),
                keyboardType: TextInputType.number,
                style: new TextStyle(fontSize: 18.0, color: Colors.black),
                controller: _controller,
                onSubmitted: (String text) {
                  print("Typed index: $text");
                  setState(() {
                    if (int.parse(text) > 2) {
                      print("Index out of range");
                    } else {
                      _index = int.parse(text);
                    }
                  });
                },
              ),
              new Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              new IndexedStack(
                index: _index,
                children: <Widget>[
                  new Icon(
                    Icons.filter_1,
                    size: 128.0,
                  ),
                  new Icon(
                    Icons.filter_2,
                    size: 128.0,
                  ),
                  new Icon(
                    Icons.filter_3,
                    size: 128.0,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
