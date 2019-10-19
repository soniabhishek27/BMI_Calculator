import 'main.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class IconContent extends StatelessWidget {
  @override

  IconContent({@required this.icon,@required this.text});
  final IconData icon;
  final String text;


  Widget build(BuildContext context) {

    return Column
      (
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}

