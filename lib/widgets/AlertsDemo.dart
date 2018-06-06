import 'package:flutter/material.dart';

class AlertDemo extends StatefulWidget {
  static final String routeName = "/alertDemo";
  @override
  _AlertDemoState createState() => _AlertDemoState();
}

class _AlertDemoState extends State<AlertDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Row(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: SimpleDialog(
                      title: Text("Choose option"),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () {
                            print("Click on Yes");
                          },
                          child: const Text("YES"),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            print("Click on No");
                          },
                          child: const Text("NO"),
                        )
                      ],
                    ));
              },
              child: Text("Simple"),
            )
          ],
        ),
      ),
    );
  }
}
