import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  static final String routeName = "/rowcolumn";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Row-Column Demo")),
      body: Row(
        children: <Widget>[
          new FlutterLogo(),
          new Expanded(
            child: new Text(
              "This is very long text",
              textAlign: TextAlign.center,
            ),
          ),
          new Expanded(
            child: new Text(
              "This is very long text",
              textAlign: TextAlign.center,
            ),
          ),
          new Expanded(
            child: new Text(
              "This is very long text",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
