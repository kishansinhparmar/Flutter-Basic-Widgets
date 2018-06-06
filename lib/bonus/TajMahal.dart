import 'package:flutter/material.dart';

class TajMahal extends StatelessWidget {
  static final String routeName = "/tajmahal";
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("RowColumnPro Examples"),
        ),
        body: new ListView(
          padding: const EdgeInsets.only(top: 0.0, bottom: 10.0),
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Taj_Mahal_%28Edited%29.jpeg/375px-Taj_Mahal_%28Edited%29.jpeg",
                  scale: 1.0,
                  repeat: ImageRepeat.noRepeat,
                  alignment: FractionalOffset.center,
                ), //Banner Image
                new Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0)),
                new Container(
                  padding: const EdgeInsets.only(left: 25.0),
//            color: Colors.grey,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Column(
                        children: <Widget>[
                          new Text(
                            "Taj Mahal",
                            style: Theme.of(context).textTheme.display1,
                          ),
                          new Text(
                            "Agra, Uttar Pradesh, India",
                            style: Theme.of(context).textTheme.body1,
                          )
                        ],
                      ),
                      new Padding(padding: const EdgeInsets.only(left: 5.0)),
                      new Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      new Text(
                        "41",
                        style: Theme.of(context).textTheme.body1,
                      )
                    ],
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0)),
                new Container(
                  alignment: FractionalOffset.center,
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(right: 30.0),
                        child: new Column(
                          children: <Widget>[
                            new Icon(
                              Icons.call,
                              color: Colors.blueAccent,
                            ),
                            new Padding(
                                padding: const EdgeInsets.only(top: 5.0)),
                            new Text(
                              "Call",
                              style: Theme.of(context).textTheme.body1,
                            )
                          ],
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(right: 30.0),
                        child: new Container(
                          child: new Column(
                            children: <Widget>[
                              new Icon(
                                Icons.navigation,
                                color: Colors.blueAccent,
                              ),
                              new Padding(
                                  padding: const EdgeInsets.only(top: 5.0)),
                              new Text(
                                "Navigate",
                                style: Theme.of(context).textTheme.body1,
                              )
                            ],
                          ),
                        ),
                      ),
                      new Container(
                        child: new Column(
                          children: <Widget>[
                            new Icon(
                              Icons.share,
                              color: Colors.blueAccent,
                            ),
                            new Padding(
                                padding: const EdgeInsets.only(top: 5.0)),
                            new Text(
                              "Share",
                              style: Theme.of(context).textTheme.body1,
                            )
                          ],
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0)),
                new Container(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: new Text(
                    "Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups",
                    style: Theme.of(context).textTheme.body1,
                  ),
                )
              ],
            )
          ],
        ));
  }
}