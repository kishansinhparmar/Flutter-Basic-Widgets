import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/widgets/ContainerDemo.dart';
import 'package:flutter_basic_widgets/widgets/RowColumnDemo.dart';
import 'package:flutter_basic_widgets/widgets/RowColumnPro.dart';
import 'package:flutter_basic_widgets/widgets/ImageDemo.dart';
import 'package:flutter_basic_widgets/widgets/TextFieldDemo.dart';
import 'package:flutter_basic_widgets/widgets/AlignDemo.dart';
import 'package:flutter_basic_widgets/widgets/IndexedStackDemo.dart';
import 'package:flutter_basic_widgets/widgets/RadioCheckDemo.dart';
import 'package:flutter_basic_widgets/widgets/FlexDemo.dart';
import 'colors.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _appName,
        theme: _buildThemeData(),
        routes: <String, WidgetBuilder>{
          ContainerDemo.routeName: (BuildContext context) =>
              new ContainerDemo(),
          RowColumnDemo.routeName: (BuildContext context) =>
              new RowColumnDemo(),
          RowColumnProDemo.routeName: (BuildContext context) =>
              new RowColumnProDemo(),
          ImageDemo.routeName: (BuildContext context) => new ImageDemo(),
          TextFieldDemo.routeName: (BuildContext context) =>
              new TextFieldDemo(),
          AlignDemo.routeName: (BuildContext context) => new AlignDemo(),
          IndexedStackDemo.routeName: (BuildContext context) =>
              new IndexedStackDemo(),
          RadioCheckDemo.routeName: (BuildContext context) =>
              new RadioCheckDemo(),
          FlexDemo.routeName: (BuildContext context) => new FlexDemo(),
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
              child: new Text("Container"),
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
              child: new Text("Row-Column"),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new RaisedButton(
              onPressed: () {
                //It only works if route properties set on materialapp class #play
                Navigator.of(context).pushNamed(RowColumnProDemo.routeName);

                //This code no need to write routes in materialapp class #play
                // Navigator.of(context).push(new MaterialPageRoute(
                // builder: (BuildContext context) => new ContainerDemo()));
              },
              child: new Text("Row-Column mainAxis"),
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
              child: new Text("Image"),
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
              child: new Text("TextField"),
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
              child: new Text("Align"),
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
              child: new Text("IndexedStack"),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new RaisedButton(
              onPressed: () {
                //It only works if route properties set on materialapp class #play
                Navigator.of(context).pushNamed(RadioCheckDemo.routeName);

                //This code no need to write routes in materialapp class #play
                // Navigator.of(context).push(new MaterialPageRoute(
                // builder: (BuildContext context) => new ContainerDemo()));
              },
              child: new Text("Radio-Check"),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new RaisedButton(
              onPressed: () {
                //It only works if route properties set on materialapp class #play
                Navigator.of(context).pushNamed(FlexDemo.routeName);

                //This code no need to write routes in materialapp class #play
                // Navigator.of(context).push(new MaterialPageRoute(
                // builder: (BuildContext context) => new ContainerDemo()));
              },
              child: new Text("Flex"),
            ),
          )
        ],
      ),
    );
  }
}

ThemeData _buildThemeData() {
  ThemeData.light();
  return new ThemeData(
      primaryColor: kPrimary,
      primaryColorDark: kPrimaryDark,
      primaryColorLight: kPrimaryLight,
      accentColor: kAccentColor,
      scaffoldBackgroundColor: kScaffoldBackgroundColor,
      dividerColor: kDividerColor,
      bottomAppBarColor: kBottomAppBarColor,
      buttonTheme: _buildButtonTheme());
}

_buildButtonTheme() {
  return ButtonThemeData(textTheme: ButtonTextTheme.accent);
}

String _appName = "Basic Flutter Widgets";
