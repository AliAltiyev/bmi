import 'package:flutter/material.dart';

class ReUsableCardSliderContent extends StatelessWidget {

  double sliderValue;
  Function(double value) callback;

  ReUsableCardSliderContent(
      {Key? key, required this.sliderValue, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const Text(
            'Height',
            style: TextStyle(fontSize: 20, color: Colors.white60),
          ),
          const SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
              text: sliderValue.toStringAsFixed(0),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              children: const <TextSpan>[
                TextSpan(
                    text: ' cm',
                    style: TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 20)),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Slider(
              overlayColor:
              MaterialStatePropertyAll(Colors.pink.withOpacity(0.3)),
              activeColor: Colors.white60,
              thumbColor: Colors.pink,
              label: sliderValue.toString(),
              max: 250,
              value: sliderValue,
              onChanged
                  :
              callback
          )
        ]
    );
  }
}