import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CalculateButton extends StatelessWidget {

  const CalculateButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLabelButton,
          ),
        ),
        padding: EdgeInsets.only(bottom: 10),
        color: kSecondaryColour,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}