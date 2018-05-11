import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  static final String routeName = "/rowcolumn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row-Column Demo")),
      body: Row(
        children: <Widget>[
          FlutterLogo(),
          Expanded(
            child: Text(
              "This is very long text",
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              "This is very long text",
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              "This is very long text",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
