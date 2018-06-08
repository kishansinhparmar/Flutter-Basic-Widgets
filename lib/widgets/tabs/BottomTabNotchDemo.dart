import 'package:flutter/material.dart';

class BottomTabNotchDemo extends StatefulWidget {
  static final String routeName = "/bottomtabnotchDemo";
  @override
  _BottomTabNotchDemoState createState() => _BottomTabNotchDemoState();
}

class _BottomTabNotchDemoState extends State<BottomTabNotchDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BottomTabNotch",
      theme: ThemeData(brightness: Brightness.light),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.favorite),
        ),
        //Try to change location propertie
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: SafeArea(
          child: Center(child: Text("Hello World")),
        ),
        bottomNavigationBar: BottomAppBar(
          hasNotch: true,
          //You can design your own BottomAppBar here.
          child: new Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "BottomAppBar With Notch...",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
