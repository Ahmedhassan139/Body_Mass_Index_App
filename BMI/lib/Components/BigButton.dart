import 'package:flutter/material.dart';
import '../Constants.dart';



class BigButton extends StatelessWidget {
  BigButton({this.buttonDoThis, this. onTap});
  final String buttonDoThis;
  final Function  onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap,
      child: Container(
        color: kBottomButtonColor,
        height: kBottomButtonHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        child: Center(
          child: SafeArea(bottom: true,
            child: Text(
              buttonDoThis,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}