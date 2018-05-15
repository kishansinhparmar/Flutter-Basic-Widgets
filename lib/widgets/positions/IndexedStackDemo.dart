import 'package:flutter/material.dart';

class IndexedStackDemo extends StatefulWidget {
  static final String routeName = "/indexedDemo";
  @override
  _IndexedStackDemoState createState() => _IndexedStackDemoState();
}

class _IndexedStackDemoState extends State<IndexedStackDemo> {
  TextEditingController _controller = TextEditingController();
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("IndexedStack Demo")),
        body: new SafeArea(
          child: new Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                new Theme(
                  data: Theme.of(context).copyWith(primaryColor: Colors.black),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "index(0-2)",
                        // hintText: "Chnage stack widget by index(0-2)",
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    // style: new TextStyle(fontSize: 18.0, color: Colors.black),
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                IndexedStack(
                  index: _index,
                  children: <Widget>[
                    Icon(
                      Icons.filter_1,
                      size: 128.0,
                    ),
                    Icon(
                      Icons.filter_2,
                      size: 128.0,
                    ),
                    Icon(
                      Icons.filter_3,
                      size: 128.0,
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
