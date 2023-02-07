import 'package:flutter/material.dart';

import '../helper/gender.dart';
import '../widgets/reusable_card.dart';
import '../widgets/reusable_card_content.dart';

const activeColor = Color(0xff282a42);
const inActiveColor = Color(0xFF111328);
const bottomContainerColor = 0xFFEB1555;
const bottomContainerHeight = 70.0;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inActiveColor;
  double maleGenderCardElevation = 0;
  double femaleGenderCardElevation = 0;
  Color feMaleColor = inActiveColor;

  _updateGenderColor(Gender gender) {
    if (gender == Gender.male &&
        maleColor == inActiveColor &&
        maleGenderCardElevation == 0) {
      feMaleColor = inActiveColor;
      femaleGenderCardElevation = 0;
      maleGenderCardElevation = 30;
      maleColor = activeColor;
    }

    if (gender == Gender.female &&
        feMaleColor == inActiveColor &&
        femaleGenderCardElevation == 0) {
      maleColor = inActiveColor;
      maleGenderCardElevation = 0;
      femaleGenderCardElevation = 30;
      feMaleColor = activeColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: ReUsableCard(
                      elevation: femaleGenderCardElevation,
                      color: feMaleColor,
                      cardChild: const ReUsableCardContent(
                        iconData: Icons.female,
                        label: "Female",
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _updateGenderColor(Gender.female);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                      child: ReUsableCard(
                          elevation: maleGenderCardElevation,
                          color: maleColor,
                          cardChild: const ReUsableCardContent(
                            iconData: Icons.male,
                            label: "Male",
                          )),
                      onTap: () {
                        setState(() {
                          _updateGenderColor(Gender.male);
                        });
                      }),
                )
              ],
            ),
          ),
          const Expanded(
            child: ReUsableCard(
              color: inActiveColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReUsableCard(
                    color: inActiveColor,
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    color: inActiveColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            margin: const EdgeInsets.only(top: 8),
            color: const Color(bottomContainerColor),
            child: const Text(
              'Calculate BMI',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

