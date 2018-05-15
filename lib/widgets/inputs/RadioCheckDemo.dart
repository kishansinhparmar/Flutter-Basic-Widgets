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
  String _genderSelection = "Male";
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio | CheckBox | Switch"),
      ),
      body: Column(children: <Widget>[
        RadioListTile(
          title: Text("Male"),
          value: 0,
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
              _genderSelection = "Male";
            });
          },
        ),
        RadioListTile(
          title: Text("Female"),
          value: 1,
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
              _genderSelection = "Female";
            });
          },
        ),
        CheckboxListTile(
          title: Text("Music"),
          value: _musicValue,
          onChanged: (flag) {
            setState(() {
              _musicValue = flag;
            });
          },
        ),
        CheckboxListTile(
          title: Text("Sport"),
          value: _sportValue,
          onChanged: (flag) {
            setState(() {
              _sportValue = flag;
            });
          },
        ),
        CheckboxListTile(
          title: Text("Reading"),
          value: _readingValue,
          onChanged: (flag) {
            setState(() {
              _readingValue = flag;
            });
          },
        ),
        SwitchListTile(
          title: Text("Switch"),
          value: _switchValue,
          onChanged: (flag) {
            setState(() {
              _switchValue = flag;
            });
          },
        ),
        Text(_genderSelection),
        Text(_switchValue ? "SWITCH ON" : "SWITCH OFF"),
        Text("Music " + (_musicValue ? " cheked" : " uncheck")),
        Text("Sport " + (_sportValue ? " cheked" : " uncheck")),
        Text("Reading " + (_readingValue ? " cheked" : " uncheck")),
      ]),
    );
  }  
}
