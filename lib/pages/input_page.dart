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
  Gender? gender;

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
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    elevation: gender == Gender.female ? 16 : 0,
                    color:
                        gender == Gender.female ? activeColor : inActiveColor,
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
                    color: gender == Gender.male ? activeColor : inActiveColor,
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

