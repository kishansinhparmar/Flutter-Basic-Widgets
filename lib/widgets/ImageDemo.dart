import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  static final String routeName = "/imageDemo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Image demo"),
      ),
      body: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: <Widget>[
          new Image.network(
              "https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg"),
          new Image.network(
              "https://photojournal.jpl.nasa.gov/jpeg/PIA19048.jpg"),
          new Image.network(
              "https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg"),
          new Image.network(
              "https://photojournal.jpl.nasa.gov/jpeg/PIA19048.jpg"),
          new Image.network(
              "https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg"),
          new Image.network(
              "https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg"),
          new Image.network(
              "https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg"),
          new Image.network(
              "https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg"),
        ],
      ),
    );
  }
}
