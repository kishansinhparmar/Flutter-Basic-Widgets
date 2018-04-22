import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/widgets/ContainerDemo.dart';
import 'package:flutter_basic_widgets/widgets/RowColumnDemo.dart';
import 'package:flutter_basic_widgets/widgets/ImageDemo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Basic Flutter Widgets",
        theme: _defaultTheme,
        routes: <String, WidgetBuilder>{
          ContainerDemo.routeName: (BuildContext context) =>
              new ContainerDemo(),
          RowColumnDemo.routeName: (BuildContext context) =>
              new RowColumnDemo(),
          ImageDemo.routeName: (BuildContext context) => new ImageDemo(),
        },
        home: new MyHome());
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_appName),
      ),
      body: new ListView(
        padding: const EdgeInsets.all(4.0),
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new RaisedButton(
              onPressed: () {
                //It only works if route properties set on materialapp class #play
                Navigator.of(context).pushNamed(ContainerDemo.routeName);

                //This code no need to write routes in materialapp class #play
                // Navigator.of(context).push(new MaterialPageRoute(
                // builder: (BuildContext context) => new ContainerDemo()));
              },
              child: new Text("Container",
                  style: Theme.of(context).textTheme.title),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new RaisedButton(
              onPressed: () {
                //It only works if route properties set on materialapp class #play
                Navigator.of(context).pushNamed(RowColumnDemo.routeName);

                //This code no need to write routes in materialapp class #play
                // Navigator.of(context).push(new MaterialPageRoute(
                // builder: (BuildContext context) => new ContainerDemo()));
              },
              child: new Text("Row-Column",
                  style: Theme.of(context).textTheme.title),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new RaisedButton(
              onPressed: () {
                //It only works if route properties set on materialapp class #play
                Navigator.of(context).pushNamed(ImageDemo.routeName);

                //This code no need to write routes in materialapp class #play
                // Navigator.of(context).push(new MaterialPageRoute(
                // builder: (BuildContext context) => new ContainerDemo()));
              },
              child:
                  new Text("Image", style: Theme.of(context).textTheme.title),
            ),
          )
        ],
      ),
    );
  }
}

ThemeData _defaultTheme = new ThemeData(
    primarySwatch: Colors.blueGrey,
    accentColor: Colors.deepOrangeAccent,
    buttonColor: Colors.deepOrangeAccent,
    brightness: Brightness.dark);

String _appName = "Basic Flutter Widgets";
