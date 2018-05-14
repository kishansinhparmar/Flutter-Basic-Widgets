import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  static final String routeName = "/textField";
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  TextEditingController _txtNameCtrl;
  String _lblText = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _txtNameCtrl = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField Demo")),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(primaryColor: Colors.black),
              child: TextField(
                controller: _txtNameCtrl,
                decoration: InputDecoration(
                    hintText: "Type your name",
                    labelText: "First Name",
                    border: OutlineInputBorder()),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: TextField(
                  controller: _txtNameCtrl,
                  // decoration: ,
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Theme(
                data: Theme.of(context).copyWith(backgroundColor: Colors.white),
                child: TextField(
                  controller: _txtNameCtrl,
                  decoration: new InputDecoration.collapsed(hintText: "Name"),
                  // decoration: ,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                _lblText,
                style: Theme.of(context).textTheme.title,
              ),
            ),
            RaisedButton(
              child: Text("GET TEXT"),
              onPressed: () {
                setState(() {
                  _lblText = _txtNameCtrl.text;
                });
              },
            ),
          ],
        ),
      )),
    );
  }
}
