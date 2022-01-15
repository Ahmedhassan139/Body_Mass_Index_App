import 'package:bmi_calculator/BMI_Brain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Components/ReusableCard.dart';
import 'package:bmi_calculator/Components/ReusableCardContent.dart';
import '../Constants.dart';
import 'Results.dart';
import '../Components/BigButton.dart';
import '../Components/Rounded_Button.dart';
import '../BMI_Brain.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  double intheight = 180;
  int intWeight =60 ;
  int intAge = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: PressedCard(
                    pressCard: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    reusableCard: ReusableCard(
                      colour: selectedGender == GenderType.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: ReusableCardContent(
                        cardIcon: FontAwesomeIcons.mars,
                        cardText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: PressedCard(
                    pressCard: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    reusableCard: ReusableCard(
                      colour: selectedGender == GenderType.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: ReusableCardContent(
                        cardIcon: FontAwesomeIcons.venus,
                        cardText: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kContentTextStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            intheight.toInt().toString(),
                            style: kBigFontStyle,
                          ),
                          Text(
                            'CM',
                            style: kContentTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbColor: kBottomButtonColor,
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Color(0XFF6A6C78),
                            thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 15,
                                disabledThumbRadius: 10),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 25),
                            overlayColor: Color(0X29EB15552)),
                        child: Slider(
                          value: intheight,
                          onChanged: (double newHeight) {
                            setState(() {
                              intheight = newHeight;
                            });
                          },
                          min: 60.0,
                          max: 220.0,
                        ),
                      )
                    ],
                  ),
                  colour: kActiveCardColor)),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kContentTextStyle,
                      ),
                      Text(
                        intWeight.toString(),
                        style: kBigFontStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(onPressed: (){
                            setState(() {
                              intWeight -= 1;
                            });
                          },
                            onLongPress: (){
                            setState(() {
                              intWeight -= 5;

                            });
                            },
                            icon: Icon(
                              FontAwesomeIcons.minus,
                            ),
                          ),
                          SizedBox(width: 20),
                          RoundedButton(onPressed: (){ setState(() {
                            intWeight += 1;

                          });

                          },
                            onLongPress: (){
                            setState(() {
                              intWeight += 5;

                            });
                            },
                            icon: Icon(
                              FontAwesomeIcons.plus,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(child: ReusableCard(colour: kActiveCardColor, cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'AGE',
                    style: kContentTextStyle,
                  ),
                  Text(
                    intAge.toString(),
                    style: kBigFontStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundedButton(onPressed: (){
                        setState(() {
                          intAge -= 1;
                        });
                      },
                        onLongPress: (){
                          setState(() {
                            intAge -= 5;

                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.minus,
                        ),
                      ),
                      SizedBox(width: 20),
                      RoundedButton(onPressed: (){ setState(() {
                        intAge += 1;

                      });

                      },
                        onLongPress: (){
                          setState(() {
                            intAge += 5;

                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.plus,
                        ),
                      ),
                    ],
                  )
                ],
              ),),
              ),
            ]),
          ),
          BigButton(buttonDoThis: 'CAlCULATE BMI', onTap: (){
            CalcBrain Calc = CalcBrain(height: intheight, weight: intWeight);
            Navigator.push(context, MaterialPageRoute(builder: (context) { return Results(calcBMI: Calc.calculateBMI(),
            result1: Calc.bodyDescription(),
            result2: Calc.commentResult(),);},) );
          },),
        ],
      ),
    );
  }
}




