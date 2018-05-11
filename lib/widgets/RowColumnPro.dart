import 'package:flutter/material.dart';

class RowColumnProDemo extends StatefulWidget {
  static final String routeName = "/rowcolumnpro";
  @override
  _RowColumnProDemoState createState() => _RowColumnProDemoState();
}

class _RowColumnProDemoState extends State<RowColumnProDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("mainAxis*.spaceEvenly"),
        ),
        body: Column(
          // #Play MainAxisAlignment.center
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[],
            ),
            Icon(
              Icons.person_outline,
              size: 60.0,
            ),
            Icon(
              Icons.person_outline,
              size: 60.0,
            ),
            Icon(
              Icons.person_outline,
              size: 60.0,
            )
          ],
        ));
  }
}
