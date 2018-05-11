import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  static final String routeName = "/alignDemo";

  @override
  _AlignDemoState createState() => new _AlignDemoState();
}

class _AlignDemoState extends State<AlignDemo> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.centerRight,
      child: new Text("Text"),
    );
  }
}
