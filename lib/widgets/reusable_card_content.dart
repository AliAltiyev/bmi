import 'package:flutter/material.dart';

const labelTextStyle =
    TextStyle(color: Colors.white60, fontWeight: FontWeight.bold, fontSize: 30);

class ReUsableCardContent extends StatelessWidget {
  final String label;
  final IconData iconData;

  const ReUsableCardContent(
      {Key? key, required this.label, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 100,
          color: Colors.white,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
