import 'package:bmi/helper/constants.dart';
import 'package:bmi/helper/gender.dart';
import 'package:bmi/widgets/reusable_calculate_button.dart';
import 'package:bmi/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final Gender userGender;
  final String? userBmi;
  final String? bmiTitle;

  const ResultPage({
    Key? key,
    required this.userGender,
    required this.userBmi,
    required this.bmiTitle,
  }) : super(key: key);

  /*
      • Underweight (Below 18.5)
    • Healthy Weight (18.5 - 24.9)
    • Overweight (25.0 - 29.9)
    • Obesity (30.0 and Above)
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            child: ReUsableCard(
              color: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiTitle!,
                    style: kUserResultTitleTextStyle,
                  ),
                  Text(
                    userBmi!,
                    style: kUserResultWeightTextStyle,
                  ),
                  Text(
                    bmiTitle!,
                    style: kUserResultWeightDescriptionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  ReUsableCalculateButton(
                      callback: () {
                        Navigator.pop(context);
                      },
                      buttonTextLabel: 'Re-Calculate')
                ],
              ),
            ),
          )
        ],
      )),
      appBar: AppBar(
        title: const Text('Result'),
      ),
    );
  }
}
