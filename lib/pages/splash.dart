import 'package:flutter/material.dart';
import 'dart:async';

import '../routes/fadeInFadeOutRoute.dart';
import 'info.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);
  @override
  _State createState() => new _State();
}

class _State extends State<Splash> {
  Duration duration = const Duration(seconds: 3);

  startTimeout() {
    return new Timer(duration, handleTimeout);
  }

  void handleTimeout() {
    Navigator.pop(context);
    Navigator.push(
        context, FadeInFadeOutRoute(builder: (context) => new Info()));
  }

  initState() {
    super.initState();
    this.startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: new BoxDecoration(
          image: new DecorationImage(
        image: new AssetImage("assets/images/splash_bg.png"),
        fit: BoxFit.cover,
      )),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Splash',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ));
  }

  dispose() {
    super.dispose();
  }
}
