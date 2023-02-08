import 'package:bmi/helper/constants.dart';
import 'package:bmi/widgets/reusable_card_slider_content.dart';
import 'package:flutter/material.dart';

import '../helper/gender.dart';
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
          const Expanded(
            child: ReUsableCard(
              cardChild: ReUsableCardSliderContent(),
              color: kInActiveColor,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReUsableCard(
                    color: kInActiveColor,
                    cardChild: ReUsableAgeAndWeightContent(
                      labelText: 'Weight', userInput: _userWeight,),
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
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/result');
            },
            child: Container(
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: const EdgeInsets.only(top: 8),
              color: const Color(kBottomContainerColor),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Calculate BMI',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

