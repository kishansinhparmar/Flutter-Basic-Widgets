import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  static final String routeName = "/container";

  @override
  Widget build(BuildContext context) {
    //Try GestureDetector() class to detect gestures
    return new Container(
        color: Colors.red,
        //Change fraction or commet the properti #play
        // alignment: FractionalOffset.center,
        padding: const EdgeInsets.all(32.0),
        child: new Container(
          color: Colors.yellow,

          //change or comment height and width #play
          // width: 200.0,
          // height: 200.0,

          //comment child if parent container has no alignment #play
          child: new Text(
            "Hello World!",
            textDirection: TextDirection.ltr,
          ),

          //#play
          // transform: new Matrix4.rotationZ(0.1),

          //Decoration try yourself #play
        ));
  }
}
