import 'package:flutter/material.dart';

class AlertDemo extends StatefulWidget {
  static final String routeName = "/alertDemo";
  @override
  _AlertDemoState createState() => _AlertDemoState();
}

class _AlertDemoState extends State<AlertDemo> {
  String _selectedOption;

  _AlertDemoState() {
    _selectedOption = "";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                _askOptions();
              },
              child: Text("Simple"),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Selected option: $_selectedOption"),
            )
          ],
        ),
      ),
    );
  }

  _askOptions() {
    showDialog(
        context: context,
        child: SimpleDialog(
          title: Text("Do you still miss your first love?"),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                setState(() {
                  _selectedOption = "Yes";
                  Navigator.of(context).pop();
                });
              },
              child: const Text("Yes"),
            ),
            SimpleDialogOption(
              onPressed: () {
                setState(() {
                  _selectedOption = "No";
                  Navigator.of(context).pop();
                });
              },
              child: const Text("No"),
            ),
            SimpleDialogOption(
              onPressed: () {
                setState(() {
                  _selectedOption = "Not Sure!";
                  Navigator.of(context).pop();
                });
              },
              child: const Text("Not Sure!"),
            )
          ],
        ));
  }
}
