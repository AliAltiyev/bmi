import 'package:bmi/helper/constants.dart';
import 'package:bmi/widgets/reusable_calculate_button.dart';
import 'package:bmi/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
                  const Text(
                    "Normal",
                    style: kUserResultTitleTextStyle,
                  ),
                  const Text(
                    '100',
                    style: kUserResultWeightTextStyle,
                  ),
                  const Text(
                    'Your weight is 100 and you should eat more',
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
