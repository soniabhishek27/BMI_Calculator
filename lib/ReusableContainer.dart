import 'package:flutter/material.dart';


class ReusableContainer extends StatelessWidget {
  //final vs const final is used for late binding and constant is used for early
  ReusableContainer({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        //  color:Color(0XFF1D1E33),
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}