import 'package:flutter/material.dart';

class RowColumnProDemo extends StatefulWidget {
  static final String routeName = "/rowcolumnpro";
  @override
  _RowColumnProDemoState createState() => _RowColumnProDemoState();
}

class _RowColumnProDemoState extends State<RowColumnProDemo> {
  int _groupValue = 0;
  var _axis = MainAxisAlignment.start;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("mainAxis*.spaceEvenly"),
        ),
        body: new SafeArea(
          child: Column(
            // #Play MainAxisAlignment.center
            mainAxisAlignment: _axis,
            children: <Widget>[
              Column(
                children: <Widget>[
                  RadioListTile(
                    title: Text("start"),
                    value: 0,
                    groupValue: _groupValue,
                    onChanged: (value) {
                      setState(() {
                        _groupValue = value;
                        _axis = MainAxisAlignment.spaceEvenly;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("end"),
                    value: 1,
                    groupValue: _groupValue,
                    onChanged: (value) {
                      setState(() {
                        _groupValue = value;
                        _axis = MainAxisAlignment.spaceBetween;
                      });
                    },
                  )
                ],
              ),
              Icon(
                Icons.person_outline,
                size: 60.0,
              ),
              Icon(
                Icons.person_outline,
                size: 60.0,
              ),
              Icon(
                Icons.person_outline,
                size: 60.0,
              )
            ],
          ),
        ));
  }
}
