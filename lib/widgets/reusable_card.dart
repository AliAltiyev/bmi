import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  final Widget? cardChild;
  final Color color;
  final double? elevation;

  const ReUsableCard(
      {Key? key, this.cardChild, required this.color, this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius:  BorderRadius.circular(16),
        color: color,
        elevation: elevation ?? 0.0,
        child: Container(
          margin: const EdgeInsets.all(15),
          child: cardChild,
        ),
      ),
    );
  }
}
