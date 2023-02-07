import 'package:flutter/material.dart';

import '../helper/constants.dart';

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
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
