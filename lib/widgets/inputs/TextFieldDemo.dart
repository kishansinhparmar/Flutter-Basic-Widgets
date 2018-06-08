import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  static final String routeName = "/textFieldDemo";
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  TextEditingController _txtNameCtrl;
  TextEditingController _txtEmailCtrl;
  TextEditingController _txtPassCtrl;
  String _lblText;
  bool _isObscureField;
  Icon _visiblityIcon;

  _TextFieldDemoState() {
    _txtNameCtrl = TextEditingController();
    _txtEmailCtrl = TextEditingController();
    _txtPassCtrl = TextEditingController();
    _visiblityIcon = const Icon(Icons.visibility_off);
    _isObscureField = true;
    _lblText = "";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField Demo")),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Outline field".toUpperCase(),
                  style: TextStyle(color: Colors.blueAccent)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _txtNameCtrl,
                  decoration: InputDecoration(
                      hintText: "Type your name",
                      labelText: "First Name",
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _txtEmailCtrl,
                  decoration: InputDecoration(
                      hintText: "Type your email",
                      labelText: "Email",
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Theme(
                  data: Theme.of(context).copyWith(primaryColor: Colors.black),
                  child: TextField(
                    obscureText: true,
                    controller: _txtPassCtrl,
                    decoration: InputDecoration(
                        hintText: "Type your password",
                        labelText: "Password",
                        border: OutlineInputBorder()),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Custom visiblity icon".toUpperCase(),
                  style: TextStyle(color: Colors.blueAccent)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: Stack(
                  children: <Widget>[
                    TextField(
                      obscureText: _isObscureField,
                      controller: _txtPassCtrl,
                      decoration: InputDecoration(
                          hintText: "Type your password",
                          labelText: "Password",
                          border: OutlineInputBorder()),
                    ),
                    Align(
                        alignment: FractionalOffset.centerRight,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObscureField =
                                      _isObscureField ? false : true;
                                  _visiblityIcon = _isObscureField
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility);
                                });
                              },
                              icon: _visiblityIcon,
                            )))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Underline field".toUpperCase(),
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: TextField(
                  controller: _txtNameCtrl,
                  decoration: InputDecoration(hintText: "Type your name"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Collapse field".toUpperCase(),
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Theme(
                data: Theme.of(context).copyWith(backgroundColor: Colors.white),
                child: TextField(
                  controller: _txtNameCtrl,
                  decoration:
                      InputDecoration.collapsed(hintText: "Type your name"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: RaisedButton(
                child: Text("GET DATA"),
                onPressed: () {
                  setState(() {
                    _lblText =
                        "${_txtNameCtrl.text}\n${_txtEmailCtrl.text}\n${_txtPassCtrl.text}";
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                _lblText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.body2,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
