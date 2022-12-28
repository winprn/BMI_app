import 'package:bmi_app/bottom_button.dart';
import 'package:bmi_app/constants.dart';
import 'package:bmi_app/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    this.bmiResult,
    this.bmiText,
    this.bmiIntepretation,
  });
  final String? bmiResult, bmiText, bmiIntepretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.fromLTRB(15.0, 0, 0, 15.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiText.toString().toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult.toString(),
                    style: kNumberTextStyle.copyWith(
                      fontSize: 100.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    bmiIntepretation.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            title: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
