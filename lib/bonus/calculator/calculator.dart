import 'package:flutter/material.dart';

class MyCalcDemo extends StatefulWidget {
  static final String routeName = "/calculatorDemo";

  @override
  _MyCalcDemoState createState() => _MyCalcDemoState();
}

class _MyCalcDemoState extends State<MyCalcDemo> {
//* * * Theme variables * * *
  final ThemeData _darkTheme = new ThemeData(
      primarySwatch: Colors.blueGrey,
      accentColor: Colors.deepOrange,
      brightness: Brightness.dark);

  final ThemeData _lightTheme = new ThemeData(
      primaryColor: Colors.white,
      accentColor: Colors.black,
      brightness: Brightness.light);

//  String _lblInput = "";
//  String _lblHint = "";
  String output = "";
  String temp = "";
  String operand = "";
  double num1 = 0.0;
  double num2 = 0.0;

//* * * Button style * * *
  _buildBtn(String txt) {
    return Expanded(
      child: OutlineButton(
        padding: const EdgeInsets.all(24.0),
        onPressed: () {
          _onBtnClick(txt);
        },
        // color: Colors.blueGrey,
        child: Text(
          txt,
          style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor),
        ),
      ),
    );
  }

  _onBtnClick(String clickText) {
    if (clickText == "CLEAR") {
      output = "";
      temp = "";
      num1 = 0.0;
      num2 = 0.0;
    } else if (clickText == ".") {
      if (temp.contains(".")) {
        print(". contain");
      } else {
        temp = temp + clickText;
        output = output + clickText;
      }
    } else if (clickText == "+" ||
        clickText == "-" ||
        clickText == "X" ||
        clickText == "/") {
      num1 = double.parse(temp);
      operand = clickText;
      output += clickText;
      temp = "";
    } else if (clickText == "=") {
      num2 = double.parse(temp);

      if (operand == "+") {
        output = (num1 + num2).toString();
      }
      if (operand == "-") {
        output = (num1 - num2).toString();
      }
      if (operand == "X") {
        output = (num1 * num2).toString();
      }
      if (operand == "/") {
        output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
      temp = "";
    } else {
      temp = temp + clickText;
      output = output + clickText;
    }

    print(temp);
    setState(() {
//      output = double.parse(temp).toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: _lightTheme,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
//* * * Typing string * * *//
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      output,
                      style: TextStyle(
                        fontSize: 46.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  )),

//* * * Instant result * * *//
              new Align(
                alignment: Alignment.centerRight,
                child: new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    output,
                    style: TextStyle(
                        fontSize: 36.0,
                        // fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor),
                  ),
                ),
              ),
              Expanded(
                child: Divider(),
              ),

//* * * Digits and operators * * *//
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      _buildBtn("7"),
                      _buildBtn("8"),
                      _buildBtn("9"),
                      _buildBtn("/")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _buildBtn("4"),
                      _buildBtn("5"),
                      _buildBtn("6"),
                      _buildBtn("X")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _buildBtn("1"),
                      _buildBtn("2"),
                      _buildBtn("3"),
                      _buildBtn("-")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _buildBtn("."),
                      _buildBtn("0"),
                      _buildBtn("00"),
                      _buildBtn("+")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _buildBtn("CLEAR"),
                      _buildBtn("="),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
