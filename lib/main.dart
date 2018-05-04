import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/widgets/ContainerDemo.dart';
import 'package:flutter_basic_widgets/widgets/RowColumnDemo.dart';
import 'package:flutter_basic_widgets/widgets/ImageDemo.dart';
import 'package:flutter_basic_widgets/widgets/TextFieldDemo.dart';
import 'package:flutter_basic_widgets/widgets/AlignDemo.dart';
import 'package:flutter_basic_widgets/widgets/IndexedStackDemo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _appName,
        theme: _defaultTheme,
        routes: <String, WidgetBuilder>{
          ContainerDemo.routeName: (BuildContext context) =>
              new ContainerDemo(),
          RowColumnDemo.routeName: (BuildContext context) =>
              new RowColumnDemo(),
          ImageDemo.routeName: (BuildContext context) => new ImageDemo(),
          TextFieldDemo.routeName: (BuildContext context) =>
              new TextFieldDemo(),
          AlignDemo.routeName: (BuildContext context) => new AlignDemo(),
          IndexedStackDemo.routeName: (BuildContext context) =>
              new IndexedStackDemo(),
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
          ),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new RaisedButton(
              onPressed: () {
                //It only works if route properties set on materialapp class #play
                Navigator.of(context).pushNamed(TextFieldDemo.routeName);

                //This code no need to write routes in materialapp class #play
                // Navigator.of(context).push(new MaterialPageRoute(
                // builder: (BuildContext context) => new ContainerDemo()));
              },
              child: new Text("TextField",
                  style: Theme.of(context).textTheme.title),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new RaisedButton(
              onPressed: () {
                //It only works if route properties set on materialapp class #play
                Navigator.of(context).pushNamed(AlignDemo.routeName);

                //This code no need to write routes in materialapp class #play
                // Navigator.of(context).push(new MaterialPageRoute(
                // builder: (BuildContext context) => new ContainerDemo()));
              },
              child:
                  new Text("Align", style: Theme.of(context).textTheme.title),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new RaisedButton(
              onPressed: () {
                //It only works if route properties set on materialapp class #play
                Navigator.of(context).pushNamed(IndexedStackDemo.routeName);

                //This code no need to write routes in materialapp class #play
                // Navigator.of(context).push(new MaterialPageRoute(
                // builder: (BuildContext context) => new ContainerDemo()));
              },
              child: new Text("IndexedStack",
                  style: Theme.of(context).textTheme.title),
            ),
          )
        ],
      ),
    );
  }
}

// ThemeData _defaultTheme = new ThemeData(
//     primarySwatch: Colors.blueGrey,
//     accentColor: Colors.deepOrangeAccent,
//     buttonColor: Colors.deepOrangeAccent,
//     brightness: Brightness.dark);

ThemeData _defaultTheme = new ThemeData(brightness: Brightness.light);

String _appName = "Basic Flutter Widgets";
