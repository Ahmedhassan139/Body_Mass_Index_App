import 'package:bmi_calculator/BMI_Brain.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Components/ReusableCard.dart';
import '../Components/BigButton.dart';


class Results extends StatelessWidget {
Results({this. calcBMI, this.result1, this.result2  });

final String calcBMI;
final String result1;
final String result2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 70, left: 15),
              child: Container(
                child: Text(
                  'Your Results',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result1,
                    style: TextStyle(
                        color: Color(0XFF22D976),
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Text(
                    calcBMI,
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    result2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
            ),
            
          ),
          BigButton(buttonDoThis:'Recalculate BMI', onTap: (){
            Navigator.pop(context);
          } ,)
        ],

      ),
    );
  }
}
