import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  static final String routeName = "/rowcolumnDemo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row-Column Demo")),
      body: new SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "One",
                  style: TextStyle(fontSize: 25.0),
                ),
                Text(
                  "Two",
                  style: TextStyle(fontSize: 25.0),
                ),
                Text(
                  "Three",
                  style: TextStyle(fontSize: 25.0),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size: 50.0,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Four",
                  style: TextStyle(fontSize: 25.0),
                ),
                Text(
                  "Five",
                  style: TextStyle(fontSize: 25.0),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Six",
                  style: TextStyle(fontSize: 25.0),
                ),
                Text(
                  "Seven",
                  style: TextStyle(fontSize: 25.0),
                ),
                Text(
                  "Eight",
                  style: TextStyle(fontSize: 25.0),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  "Nine",
                  style: TextStyle(fontSize: 25.0),
                ),
                Text(
                  "Ten",
                  style: TextStyle(fontSize: 25.0),
                ),
                Text(
                  "Eleven",
                  style: TextStyle(fontSize: 25.0),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Twelve",
                  style: TextStyle(fontSize: 25.0),
                ),
                Text(
                  "Thirteen",
                  style: TextStyle(fontSize: 25.0),
                ),
                Text(
                  "Fourteen",
                  style: TextStyle(fontSize: 25.0),
                )
              ],
            ),
            Text(
              "Fifteen",
              style: TextStyle(fontSize: 25.0),
            ),
            Text(
              "Sixteen",
              style: TextStyle(fontSize: 25.0),
            ),
            Text(
              "Seventeen",
              style: TextStyle(fontSize: 25.0),
            )
          ],
        ),
      ),
    );
  }
}
