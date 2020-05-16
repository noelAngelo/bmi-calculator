import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.genderIcon, this.title});

  final IconData genderIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,),
        SizedBox(height: 10,),
        Text(title,
          style: kLabelTextStyle,)
      ],
    );
  }
}