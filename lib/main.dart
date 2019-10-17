import 'package:flutter/material.dart';
import 'Input_page.dart';

    void main() {
      runApp(MyApp());

    }

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //theme is applied here
       theme: ThemeData.dark().copyWith(
         primaryColor: Color(0XFF0A0E21),
         scaffoldBackgroundColor: Color(0XFF0A0E21),

       ),

      home: InputPage(),
    );
  }
}

