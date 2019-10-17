import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusableContainer.dart';

const bottmContainerHeight = 80.0;
const mycolor = Color(0XFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
            children: <Widget>[
            //first Column
            Expanded(
              child: Row
                (
                children: <Widget>[
                  //1 Box Column 1
                  Expanded(
                    child: ReusableContainer
                      (
                      colour: mycolor,
                      cardChild: IconContent(
                       icon: FontAwesomeIcons.mars,
                        text: 'Male',

                      ),
                    )
                  ),
                  // 2 box column 1
                  Expanded(
                    child: ReusableContainer
                      (
                        colour: mycolor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'Female',

                      ),


                    ),
                  ),
                ],
              ),
            ),
            //Second column
            Expanded(
              child: new ReusableContainer(colour: mycolor),
            ),
            //Third column
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new ReusableContainer(colour: mycolor),
                  ),
                  Expanded(
                    child: new ReusableContainer(colour: mycolor),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottmContainerHeight,
            )
          ],
        ));
  }
}



