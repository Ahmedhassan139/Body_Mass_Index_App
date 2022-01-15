import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';


class ReusableCardContent extends StatelessWidget {
  ReusableCardContent({this.cardIcon, this.cardText});
  final IconData cardIcon;
  final String cardText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(cardIcon, size: 80),
        SizedBox(height: 15),
        Text(
          cardText,
          style: kContentTextStyle,
        )
      ],
    );
  }
}
