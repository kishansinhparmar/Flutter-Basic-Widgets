import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget {
  static final String routeName = "/alignDemo";

  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.centerRight,
      child: Text("Text"),
    );
  }
}
