import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  static final String routeName = "/textField";
  @override
  _TextFieldDemoState createState() => new _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  TextEditingController _txtNameCtrl;
  String _lblText = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _txtNameCtrl = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("TextField Demo")),
        body: new Column(
          children: <Widget>[
            new TextField(
              controller: _txtNameCtrl,
            ),
            new Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                _lblText,
                style: Theme.of(context).textTheme.title,
              ),
            ),
            new RaisedButton(
              child: new Text("GET TEXT"),
              onPressed: () {
                setState(() {
                  _lblText = _txtNameCtrl.text;
                });
              },
            )
          ],
        ));
  }
}
