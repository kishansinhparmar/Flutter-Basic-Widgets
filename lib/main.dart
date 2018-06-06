import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/widgets/positions/ContainerDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/RowColumnDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/RowColumnPro.dart';
import 'package:flutter_basic_widgets/widgets/ImageDemo.dart';
import 'package:flutter_basic_widgets/widgets/AlertsDemo.dart';
import 'package:flutter_basic_widgets/widgets/inputs/TextFieldDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/AlignDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/IndexedStackDemo.dart';
import 'package:flutter_basic_widgets/widgets/inputs/RadioCheckDemo.dart';
import 'package:flutter_basic_widgets/widgets/positions/FlexDemo.dart';
import 'package:flutter_basic_widgets/widgets/tabs/TabsDemo.dart';
import 'package:flutter_basic_widgets/widgets/tabs/BottomTabDemo.dart';
import 'package:flutter_basic_widgets/widgets/tabs/BottomTabNotch.dart';
import 'package:flutter_basic_widgets/widgets/ExpandableListDemo.dart';
import 'package:flutter_basic_widgets/widgets/buttons/ButtonsDemo.dart';
import 'package:flutter_basic_widgets/bonus/beebom/blogin.dart';
import 'package:flutter_basic_widgets/bonus/TajMahal.dart';
import 'colors.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  String _appName;

  MyApp() {
    _appName = "Basic Flutter Widgets";
  }

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
          TabsDemo.routeName: (BuildContext context) => new TabsDemo(),
          BottomTabDemo.routeName: (BuildContext context) =>
              new BottomTabDemo(),
          BottomTabNotch.routeName: (BuildContext context) =>
              new BottomTabNotch(),
          ExpandableListDemo.routeName: (BuildContext context) =>
              new ExpandableListDemo(),
          ButtonsDemo.routeName: (BuildContext context) => new ButtonsDemo(),
          BLogin.routeName: (BuildContext context) => new BLogin(),
          TajMahal.routeName: (BuildContext context) => new TajMahal(),
          AlertDemo.routeName: (BuildContext context) => new AlertDemo(),
        },
        home: new ExpandableListDemo());
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
