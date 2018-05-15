import 'package:flutter/material.dart';

class BHome extends StatefulWidget {
  static final String routeName = "/bhome";
  @override
  _BHomeState createState() => new _BHomeState();
}

class _BHomeState extends State<BHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildTheme(),
      title: "Beebom",
      home: BHomeClass(),
    );
  }
}

class BHomeClass extends StatefulWidget {
  @override
  _BHomeClassState createState() => new _BHomeClassState();
}

class _BHomeClassState extends State<BHomeClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 35.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Chip(
                  avatar: Icon(Icons.flash_on),
                  label: Text(
                    "Android",
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

ThemeData _buildTheme() {
  return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      accentColor: Colors.orangeAccent);
}
