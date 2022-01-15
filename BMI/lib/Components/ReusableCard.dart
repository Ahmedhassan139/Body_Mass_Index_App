import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.cardPressed,});
  final Color colour;
  final Widget cardChild;
  final Function cardPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class PressedCard extends StatelessWidget {
  PressedCard({this.pressCard, @required this.reusableCard});
  Widget reusableCard;
  Function pressCard;

  @override
  Widget build (BuildContext context){
    return
  GestureDetector(child: reusableCard ,
  onTap: pressCard ,
  );


  }
}