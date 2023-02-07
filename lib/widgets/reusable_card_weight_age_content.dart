import 'package:flutter/material.dart';

import 'custom_rounded_button.dart';

class ReUsableAgeAndWeightContent extends StatefulWidget {
  int userInput;
  final String labelText;

  ReUsableAgeAndWeightContent(
      {Key? key, required this.userInput, required this.labelText})
      : super(key: key);

  @override
  State<ReUsableAgeAndWeightContent> createState() =>
      _ReUsableAgeAndWeightContentState();
}

class _ReUsableAgeAndWeightContentState
    extends State<ReUsableAgeAndWeightContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.labelText,
          style: const TextStyle(fontSize: 20, color: Colors.white38),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          widget.userInput.toString(),
          style: const TextStyle(fontSize: 60),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomRoundedButton(
              iconData: Icons.remove,
              callback: () {
                setState(() {
                  widget.userInput > 0 ? widget.userInput-- : null;
                });
              },
            ),
            CustomRoundedButton(
              iconData: Icons.add,
              callback: () {
                setState(() {
                  widget.userInput < 200 ? widget.userInput++ : null;
                });
              },
            )
          ],
        )
      ],
    );
  }
}
