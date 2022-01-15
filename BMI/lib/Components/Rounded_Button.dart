import 'package:flutter/material.dart';
import '../Constants.dart';


class RoundedButton extends StatelessWidget {
  RoundedButton({this.icon, this. onPressed, this.onLongPress});
  final Widget icon;
  Function onPressed;
  Function onLongPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onLongPress: onLongPress,
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: kInactiveCardColor,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      child: icon,
    );
  }
}