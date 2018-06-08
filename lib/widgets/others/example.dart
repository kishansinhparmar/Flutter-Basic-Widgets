import 'package:flutter/material.dart';

class ExampleDemo extends StatefulWidget {
  		static final String routeName = "/exampleDemo";
  @override
  _ExampleDemoState createState() => _ExampleDemoState();
}

class _ExampleDemoState extends State<ExampleDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
