import 'package:bmi/helper/constants.dart';
import 'package:flutter/material.dart';

class ReUsableCalculateButton extends StatelessWidget {
  final VoidCallback callback;
  final String buttonTextLabel;

  const ReUsableCalculateButton(
      {Key? key, required this.callback, required this.buttonTextLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: const Color(kBottomContainerColor),
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 8),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            buttonTextLabel,
            style: const TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
