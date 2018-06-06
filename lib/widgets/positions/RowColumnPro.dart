import 'package:flutter/material.dart';

class RowColumnProDemo extends StatefulWidget {
  static final String routeName = "/rowcolumnpro";
  @override
  _RowColumnProDemoState createState() => _RowColumnProDemoState();
}

class _RowColumnProDemoState extends State<RowColumnProDemo> {
  MainAxisAlignment _axis;

  _RowColumnProDemoState() {
    _axis = MainAxisAlignment.end;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("mainAxis"),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Icon(
                  Icons.person_outline,
                  size: 60.0,
                ),
                Icon(
                  Icons.person_outline,
                  size: 120.0,
                ),
                Icon(
                  Icons.person_outline,
                  size: 60.0,
                ),
              ],
            ),
          ),
        ));
  }
}
