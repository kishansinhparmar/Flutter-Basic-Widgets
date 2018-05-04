import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  static final String routeName = "/alignDemo";

  @override
  _AlignDemoState createState() => new _AlignDemoState();
}

class _AlignDemoState extends State<AlignDemo> {
  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: FractionalOffset.topCenter,
      child: new Text("data"),
    );
  }
}
