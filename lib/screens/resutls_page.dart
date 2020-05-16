import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/calculate_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.resultInterpretation
  });

  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Results',
              style: kResultHeader
            ),
          ),
          Expanded(
            child: CustomCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(resultText,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                  Text(bmiResult,
                    style: kBMIResult,
                  ),
                  Text(resultInterpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  )
                ],
              ),
            ),
          ),
          CalculateButton(buttonTitle: 'Recalculate', onTap: (){Navigator.pop(context);},)
        ],
      ),
    );
  }
}



