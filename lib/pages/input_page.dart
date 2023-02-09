import 'package:bmi/helper/constants.dart';
import 'package:bmi/pages/result_page.dart';
import 'package:bmi/widgets/reusable_calculate_button.dart';
import 'package:bmi/widgets/reusable_card_slider_content.dart';
import 'package:flutter/material.dart';

import '../helper/gender.dart';
import '../user_info.dart';
import '../widgets/reusable_card.dart';
import '../widgets/reusable_card_gender_content.dart';
import '../widgets/reusable_card_weight_age_content.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? gender;
  final int _userWeight = 60;
  final int _userAge = 19;
  int _sliderValue = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    elevation: gender == Gender.female ? 16 : 0,
                    color:
                        gender == Gender.female ? kActiveColor : kInActiveColor,
                    cardChild: const ReUsableCardContent(
                      iconData: Icons.female,
                      label: "Female",
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    elevation: gender == Gender.male ? 16 : 0,
                    color: gender == Gender.male ? kActiveColor : kInActiveColor,
                    cardChild: const ReUsableCardContent(
                      iconData: Icons.male,
                      label: "Male",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReUsableCard(
              cardChild: ReUsableCardSliderContent(
                sliderValue: _sliderValue.toDouble(),
                callback: (newValue) {
                  setState(() {
                    _sliderValue = newValue.toInt();
                  });
                },
              ),
              color: kInActiveColor,
            ),
          ),

          /*
                  Slider(
            overlayColor:
                MaterialStatePropertyAll(Colors.pink.withOpacity(0.3)),
            activeColor: Colors.white60,
            thumbColor: Colors.pink,
            label: widget.sliderValue.toString(),
            max: 250,
            value: widget.sliderValue,
            onChanged: (newValue) {
              setState(() {
                widget.sliderValue = newValue;
              });
            })
           */

          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReUsableCard(
                    color: kInActiveColor,
                    cardChild: ReUsableAgeAndWeightContent(
                      labelText: 'Weight',
                      userInput: _userWeight,
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    color: kInActiveColor,
                    cardChild: ReUsableAgeAndWeightContent(
                      labelText: 'Age',
                      userInput: _userAge,
                    ),
                  ),
                )
              ],
            ),
          ),
          ReUsableCalculateButton(
              callback: () {
                final CalculatorBrain calc =
                    CalculatorBrain(height: _sliderValue, weight: _userWeight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                            userGender: gender!,
                            userBmi: calc.calculateBmi(),
                            bmiTitle: calc.getResult())));
              },
              buttonTextLabel: 'CALCULATE')
        ],
      ),
    );
  }
}

