import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback callback;

  const CustomRoundedButton({
    Key? key,
    required this.iconData,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: callback,
      constraints: const BoxConstraints.tightFor(width: 50, height: 50),
      shape: const CircleBorder(),
      fillColor: Colors.pink,
      elevation: 16,
      child: Align(
          alignment: Alignment.center,
          child: Icon(
            iconData,
            size: 46,
          )),
    );
  }
}
