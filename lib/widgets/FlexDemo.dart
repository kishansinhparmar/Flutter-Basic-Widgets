import 'package:flutter/material.dart';

class FlexDemo extends StatefulWidget {
  static final String routeName = "/flexdemo";
  @override
  _FlexDemoState createState() => _FlexDemoState();
}

class _FlexDemoState extends State<FlexDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flex"),
      ),
      body: SafeArea(
        child: Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Text("Text-1"),
            Text("Text-2"),
            Flex(
              direction: Axis.vertical,
              children: <Widget>[Text("Text-3"), Text("Text-4")],
            )
          ],
        ),
      ),
    );
  }
}
