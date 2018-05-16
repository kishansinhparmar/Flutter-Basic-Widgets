import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/widgets/positions/ContainerDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/RowColumnDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/RowColumnPro.dart';
import 'package:flutter_basic_widgets/widgets/ImageDemo.dart';
import 'package:flutter_basic_widgets/widgets/inputs/TextFieldDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/AlignDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/IndexedStackDemo.dart';
import 'package:flutter_basic_widgets/widgets/inputs/RadioCheckDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/FlexDemo.dart';
import 'package:flutter_basic_widgets/widgets/tabs/TabsDemo.dart';
import 'package:flutter_basic_widgets/widgets/tabs/BottomTabDemo.dart';
import 'package:flutter_basic_widgets/widgets/ExpandableListDemo.dart';
import 'package:flutter_basic_widgets/widgets/buttons/ButtonsDemo.dart';
import 'package:flutter_basic_widgets/bonus/beebom/blogin.dart';
import 'colors.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData base = ThemeData.light();
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _appName,
        theme: _buildThemeData(base),
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
          TabsDemo.routeName: (BuildContext context) =>
              new TabsDemo(),
          BottomTabDemo.routeName: (BuildContext context) =>
              new BottomTabDemo(),
          ExpandableListDemo.routeName: (BuildContext context) =>
              new ExpandableListDemo(),
          ButtonsDemo.routeName: (BuildContext context) => new ButtonsDemo(),
          BLogin.routeName: (BuildContext context) => new BLogin(),
        },
        home: new ExpandableListDemo());
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
        children: _getButtons(context),
      ),
    );
  }
}

ThemeData _buildThemeData(ThemeData base) {
  return new ThemeData(
      primaryColor: kPrimary,
      primaryColorDark: kPrimaryDark,
      primaryColorLight: kPrimaryLight,
      accentColor: kAccentColor,
      // iconTheme: base.iconTheme.copyWith(color: Colors.red),
      scaffoldBackgroundColor: kScaffoldBackgroundColor,
      dividerColor: kDividerColor,
      bottomAppBarColor: kBottomAppBarColor,
      buttonTheme: _buildButtonTheme());
}

_buildButtonTheme() {
  return ButtonThemeData(textTheme: ButtonTextTheme.accent);
}

String _appName = "Basic Flutter Widgets";

_getButtons(BuildContext context) {
  List<Widget> widgetList = List<Widget>();

  var routes = [
    ContainerDemo.routeName,
    RowColumnDemo.routeName,
    RowColumnProDemo.routeName,
    ImageDemo.routeName,
    TextFieldDemo.routeName,
    AlignDemo.routeName,
    IndexedStackDemo.routeName,
    RadioCheckDemo.routeName,
    FlexDemo.routeName,
    BottomTabDemo.routeName,
    ExpandableListDemo.routeName
  ];

  var btnNames = [
    "ContainerDemo",
    "RowColumnDemo",
    "RowColumnProDemo",
    "ImageDemo",
    "TextFieldDemo",
    "AlignDemo",
    "IndexedStackDemo",
    "RadioCheckDemo",
    "FlexDemo",
    "BottomTabDemo",
    "ExpandableListDemo"
  ];

  for (int i = 0; i < routes.length; i++) {
    widgetList.add(Padding(
      padding: const EdgeInsets.all(4.0),
      child: RaisedButton(
        onPressed: () {
          //It only works if route properties set on materialapp class #play
          Navigator.of(context).pushNamed(routes[i]);

          //This code no need to write routes in materialapp class #play
          // Navigator.of(context).push(new MaterialPageRoute(
          // builder: (BuildContext context) => new ContainerDemo()));
        },
        child: Text(btnNames[i]),
      ),
    ));
  }

  return widgetList;
}
