import 'package:flutter/material.dart';

class ButtonsDemo extends StatefulWidget {
  static final String routeName = "/buttonsdemo";
  @override
  _ButtonsDemoState createState() => new _ButtonsDemoState();
}

class _ButtonsDemoState extends State<ButtonsDemo> {
  String _whichButtonClick = "";
  List<DropdownMenuItem> _items = List<DropdownMenuItem>();

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 5; i++) {
      _items.add(DropdownMenuItem(
        child: Text("Item $i"),
        value: "Item $i",
      ));
    }

    String _itemValue = "Item 0";
    return Scaffold(
        appBar: AppBar(
          title: Text("Buttons Demo"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        _whichButtonClick = "RaisedButton";
                      });
                    },
                    child: Text("RaisedButton Click"),
                  ),
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        _whichButtonClick = "FlatButton";
                      });
                    },
                    child: Text("Flat"),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      setState(() {
                        _whichButtonClick = "IconButton";
                      });
                    },
                  ),
                  BackButton(),
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        _whichButtonClick = "FloatingButton";
                      });
                    },
                  ),
                  DropdownButton(
                    // hint: Text("Select"),
                    value: _itemValue,
                    items: _items,
                    onChanged: (item) {
                      setState(() {
                        _itemValue = item;
                        _whichButtonClick = item;
                      });
                    },
                  ),
                  Text(_whichButtonClick + " clicked..."),
                ],
              ),
            ),
          ),
        ));
  }
}
