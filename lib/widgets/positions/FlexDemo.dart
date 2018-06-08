import 'package:flutter/material.dart';

class FlexDemo extends StatefulWidget {
  static final String routeName = "/flexDemo";
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
        child: Center(
          child: Text("Need clear flex example"),
        ),
      ),
    );
  }
}
