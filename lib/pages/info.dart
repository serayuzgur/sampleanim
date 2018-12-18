import 'package:flutter/material.dart';
import '../widgets/animated/ripple.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: new BoxDecoration(
          image: new DecorationImage(
        image: new AssetImage("assets/images/info_bg.png"),
        fit: BoxFit.cover,
      )),
      child:  Center(
            child: Ripple(
          300,
          child: Text('Info',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 50.0, color: Colors.white)),
        )),
    ));
  }
}
