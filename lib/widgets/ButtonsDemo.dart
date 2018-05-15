import 'package:flutter/material.dart';

class ButtonsDemo extends StatefulWidget {
  static final String routeName = "/buttonsdemo";
  @override
  _ButtonsDemoState createState() => new _ButtonsDemoState();
}

class _ButtonsDemoState extends State<ButtonsDemo> {
  String _whichButtonClick = "";

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem> _items = List<DropdownMenuItem>();

    for (int i = 0; i < 5; i++) {
      _items.add(DropdownMenuItem(
        child: Text("Item $i"),
        value: "Item $i",
      ));
    }

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
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          _whichButtonClick = "RaisedButton";
                        });
                      },
                      child: Text("RAISED BUTTON"),
                    ),
                  ),
//Outline
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: OutlineButton(
                      onPressed: () {
                        setState(() {
                          _whichButtonClick = "OutlineButton";
                        });
                      },
                      child: Text("OUTLINE BUTTON"),
                    ),
                  ),
//Flat
                  new Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          _whichButtonClick = "FlatButton";
                        });
                      },
                      child: Text("FLAT BUTTON"),
                    ),
                  ),
//icon
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {
                        setState(() {
                          _whichButtonClick = "IconButton";
                        });
                      },
                    ),
                  ),
//Back
                  new Padding(
                      padding: const EdgeInsets.all(4.0), child: BackButton()),
//Floating
                  new Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          _whichButtonClick = "FloatingButton";
                        });
                      },
                    ),
                  ),
//Dropdown
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DropdownButton(
                      // hint: Text("Select"),
                      // value: _itemValue,
                      items: _items,
                      onChanged: (item) {
                        setState(() {
                          _whichButtonClick = item;
                        });
                      },
                    ),
                  ),
                  new Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(_whichButtonClick + " clicked...")),
                ],
              ),
            ),
          ),
        ));
  }
}
