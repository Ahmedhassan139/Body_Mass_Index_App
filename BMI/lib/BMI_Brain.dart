import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
class CalcBrain {
CalcBrain({this.weight, this.height});
final height;
final weight;
double _bMI;


  String calculateBMI() {
       _bMI = (weight / (height/100 * height/100));
      String BMI = _bMI.toStringAsFixed(1);

         return BMI;
  }

  String bodyDescription () {
    if (_bMI >= 25) {return 'OverWeight';}
    else if (_bMI > 18.5){return 'Normal';}
    else {return 'UnderWeight';}
  }

  String commentResult () {
    if (_bMI >= 25) {return 'You need more exercise!';}
    else if (_bMI > 18.5){return 'Good job, Keep up!';}
    else {return 'You should eat more!';}

  }



}