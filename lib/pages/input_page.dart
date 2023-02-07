import 'package:flutter/material.dart';

import '../widgets/reusable_card.dart';
import '../widgets/reusable_card_content.dart';

const bottomContainerColor = 0xFFEB1555;
const bottomContainerHeight = 70.0;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              children: const [
                ReUsableCard(
                    cardChild: ReUsableCardContent(
                  iconData: Icons.female,
                  label: "Female",
                )),
                ReUsableCard(
                    cardChild: ReUsableCardContent(
                  iconData: Icons.male,
                  label: "Male",
                ))
              ],
            ),
          ),
          const ReUsableCard(),
          Expanded(
            child: Row(
              children: const [ReUsableCard(), ReUsableCard()],
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

