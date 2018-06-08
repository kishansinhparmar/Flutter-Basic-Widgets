import 'package:flutter/material.dart';

class GradientDemo extends StatelessWidget {
  static final String routeName = "/gradientDemo";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.redAccent, Colors.blueAccent],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.6, 0.0),
            stops: [0.4, 1.6],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
