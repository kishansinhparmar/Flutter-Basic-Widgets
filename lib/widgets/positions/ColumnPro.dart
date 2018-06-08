import 'package:flutter/material.dart';

class ColumnProDemo extends StatefulWidget {
  static final String routeName = "/columnpro";
  @override
  _ColumnProDemoState createState() => _ColumnProDemoState();
}

class _ColumnProDemoState extends State<ColumnProDemo> {
  MainAxisAlignment _mainAxis;
  String _mainAxisStrValue;
  CrossAxisAlignment _crossAxis;
  String _crossAxisStrValue;

  _ColumnProDemoState() {
    _mainAxis = MainAxisAlignment.start;
    _mainAxisStrValue = "0";
    _crossAxis = CrossAxisAlignment.start;
    _crossAxisStrValue = "0";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ColumnPro"),
          bottom: PreferredSize(
            preferredSize: Size(0.0, 60.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Main"),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        items: _getMainAxisAlignments(),
                        value: _mainAxisStrValue,
                        onChanged: (item) {
                          _mainAxisChange(item);
                        },
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Cross"),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        items: _getCrossAxisAlignments(),
                        value: _crossAxisStrValue,
                        onChanged: (item) {
                          _crossAxisChange(item);
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: _mainAxis,
              crossAxisAlignment: _crossAxis,
              // mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Icon(
                  Icons.person,
                  size: 60.0,
                ),
                Icon(
                  Icons.person,
                  size: 120.0,
                ),
                Icon(
                  Icons.person,
                  size: 60.0,
                ),
              ],
            ),
          ),
        ));
  }

  List<DropdownMenuItem<String>> _getMainAxisAlignments() {
    List<DropdownMenuItem<String>> _mainAxisItems;

    _mainAxisItems = List<DropdownMenuItem<String>>();
    _mainAxisItems.add(DropdownMenuItem(
      child: Text("Start"),
      value: "0",
    ));
    _mainAxisItems.add(DropdownMenuItem(
      child: Text("Center"),
      value: "1",
    ));
    _mainAxisItems.add(DropdownMenuItem(
      child: Text("End"),
      value: "2",
    ));
    _mainAxisItems.add(DropdownMenuItem(
      child: Text("spaceAround"),
      value: "3",
    ));
    _mainAxisItems.add(DropdownMenuItem(
      child: Text("spaceBetween"),
      value: "4",
    ));
    _mainAxisItems.add(DropdownMenuItem(
      child: Text("spaceEvenly"),
      value: "5",
    ));

    return _mainAxisItems;
  }

  List<DropdownMenuItem<String>> _getCrossAxisAlignments() {
    List<DropdownMenuItem<String>> _crossAxisItems;

    _crossAxisItems = List<DropdownMenuItem<String>>();
    _crossAxisItems.add(DropdownMenuItem(
      child: Text("Start"),
      value: "0",
    ));
    _crossAxisItems.add(DropdownMenuItem(
      child: Text("Center"),
      value: "1",
    ));
    _crossAxisItems.add(DropdownMenuItem(
      child: Text("End"),
      value: "2",
    ));
    _crossAxisItems.add(DropdownMenuItem(
      child: Text("Stretch"),
      value: "3",
    ));

    return _crossAxisItems;
  }

  _mainAxisChange(item) {
    switch (item) {
      case "0":
        setState(() {
          _mainAxis = MainAxisAlignment.start;
          _mainAxisStrValue = "0";
        });
        break;
      case "1":
        setState(() {
          _mainAxis = MainAxisAlignment.center;
          _mainAxisStrValue = "1";
        });
        break;
      case "2":
        setState(() {
          _mainAxis = MainAxisAlignment.end;
          _mainAxisStrValue = "2";
        });
        break;
      case "3":
        setState(() {
          _mainAxis = MainAxisAlignment.spaceAround;
          _mainAxisStrValue = "3";
        });
        break;
      case "4":
        setState(() {
          _mainAxis = MainAxisAlignment.spaceBetween;
          _mainAxisStrValue = "4";
        });
        break;
      case "5":
        setState(() {
          _mainAxis = MainAxisAlignment.spaceEvenly;
          _mainAxisStrValue = "5";
        });
        break;
      default:
        setState(() {
          _mainAxis = MainAxisAlignment.start;
          _mainAxisStrValue = "0";
        });
        break;
    }
  }

  _crossAxisChange(item) {
    switch (item) {
      case "0":
        setState(() {
          _crossAxis = CrossAxisAlignment.start;
          _crossAxisStrValue = "0";
        });
        break;
      case "1":
        setState(() {
          _crossAxis = CrossAxisAlignment.center;
          _crossAxisStrValue = "1";
        });
        break;
      case "2":
        setState(() {
          _crossAxis = CrossAxisAlignment.end;
          _crossAxisStrValue = "2";
        });
        break;
      case "3":
        setState(() {
          _crossAxis = CrossAxisAlignment.stretch;
          _crossAxisStrValue = "3";
        });
        break;
      default:
        setState(() {
          _crossAxis = CrossAxisAlignment.start;
          _crossAxisStrValue = "0";
        });
        break;
    }
  }
}
