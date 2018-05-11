import 'package:flutter/material.dart';

class RadioCheckDemo extends StatefulWidget {
  static final String routeName = "/radioCheckDemo";
  @override
  _RadioCheckDemoState createState() => new _RadioCheckDemoState();
}

class _RadioCheckDemoState extends State<RadioCheckDemo> {
  int _groupValue = 0;
  bool _musicValue = false;
  bool _sportValue = false;
  bool _readingValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio-CheckBox"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(children: <Widget>[
          RadioListTile(
            title: Text("MALE"),
            value: 0,
            groupValue: _groupValue,
            onChanged: (value) {
              setState(() {
                _groupValue = value;
              });
            },
          ),
          RadioListTile(
            title: Text("FEMALE"),
            value: 1,
            groupValue: _groupValue,
            onChanged: (value) {
              setState(() {
                _groupValue = value;
              });
            },
          ),

          CheckboxListTile(
            title: Text("MUSIC"),
            value: _musicValue,
            onChanged: (flag) {
              setState(() {
                _musicValue = flag;
              });
            },
          ),
          CheckboxListTile(
            title: Text("SPORT"),
            value: _sportValue,
            onChanged: (flag) {
              setState(() {
                _sportValue = flag;
              });
            },
          ),
          CheckboxListTile(
            title: Text("READING"),
            value: _readingValue,
            onChanged: (flag) {
              setState(() {
                _readingValue = flag;
              });
            },
          )
        ]),
      ),
    );
  }
}
