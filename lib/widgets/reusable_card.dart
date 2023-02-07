import 'package:flutter/material.dart';

const reUsableContainerColor = 0xFF1d1e33;

class ReUsableCard extends StatelessWidget {
  final Widget? cardChild;

  const ReUsableCard({Key? key, this.cardChild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: Color(reUsableContainerColor),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: cardChild,
      ),
    );
  }
}
