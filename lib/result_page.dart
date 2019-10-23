import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';
import 'ReusableContainer.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,@required this.resultText,this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result ',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                      resultText.toUpperCase(),
                  ),
                  Text(
                    bmiResult,
                    style: kBMItextstyle,
                  ),
                  Text(
                      interpretation,style: kBodyTextStyle
                    ,
                    textAlign: TextAlign.center,
                  ),


                ],
              ),
            ),
          ),
          BottomButton(
            buttontitle: 'Re-CALCULATE',
            onTap: (){

              Navigator.pop(context);

            },
          ),

        ],
      ),
    );
  }
}


class BottomButton extends StatelessWidget {
  @override
  BottomButton({@required this.onTap,@required this.buttontitle});
  final Function onTap;
  final String buttontitle;

  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttontitle,
            style: kLargeBottomStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(20.0),
        height: kbottmContainerHeight,
      ),
    );
  }
}

