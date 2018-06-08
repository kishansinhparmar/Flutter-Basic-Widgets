import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  static final String routeName = "/imageDemo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image demo"),
      ),
      body: SafeArea(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: <Widget>[
            Image.network(
                "https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg"),
            Image
                .network("https://photojournal.jpl.nasa.gov/jpeg/PIA19048.jpg"),
            Image.network(
                "https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg"),
          ],
        ),
      ),
    );
  }
}
