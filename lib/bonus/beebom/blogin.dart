import 'package:flutter/material.dart';
import 'bhome.dart';

class BLogin extends StatefulWidget {
  static final String routeName = "/blogin";
  @override
  _BLoginState createState() => new _BLoginState();
}

class _BLoginState extends State<BLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SignUp",
      theme: _buildTheme(),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  // color: Colors.redAccent,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 120.0,
                      ),
                      Container(
                          width: 100.0,
                          height: 100.0,
                          child: FlutterLogo()),
                      Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Everything is widget"))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    // color: Colors.greenAccent,
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 32) /
                                        2,
                                child: RaisedButton(
                                  color: Colors.red,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => BHome()));
                                  },
                                  child: Text(
                                    "G+",
                                    style: TextStyle(color: Colors.white,fontSize: 18.0),
                                  ),
                                ),
                              ),
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 32) /
                                        2,
                                child: RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => BHome()));
                                  },
                                  child: Text(
                                    "f",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.0),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: OutlineButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => BHome()));
                              },
                              child: Text("Continue with EMAIL".toUpperCase()),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "OR SKIP".toUpperCase(),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

ThemeData _buildTheme() {
  return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.black,
      accentColor: Colors.orangeAccent);
}
