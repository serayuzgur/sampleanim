import 'package:flutter/material.dart';

class FadeInFadeOutRoute<T> extends MaterialPageRoute<T> {
  FadeInFadeOutRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
      return FadeTransition(opacity: animation, child: child);
  }
}