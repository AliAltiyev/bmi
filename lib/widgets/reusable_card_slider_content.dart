import 'package:flutter/material.dart';

class ReUsableCardSliderContent extends StatefulWidget {
  const ReUsableCardSliderContent({Key? key}) : super(key: key);

  @override
  State<ReUsableCardSliderContent> createState() =>
      _ReUsableCardSliderContentState();
}

class _ReUsableCardSliderContentState extends State<ReUsableCardSliderContent> {
  double sliderValue = 180;

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
            text: sliderValue.toInt().toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            children: const <TextSpan>[
              TextSpan(
                  text: ' cm',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20)),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Slider.adaptive(
            overlayColor:
                MaterialStatePropertyAll(Colors.pink.withOpacity(0.3)),
            activeColor: Colors.white60,
            thumbColor: Colors.pink,
            label: sliderValue.toString(),
            max: 250,
            min: 110,
            value: sliderValue,
            onChanged: (newValue) {
              setState(() {
                sliderValue = newValue;
              });
            }),
      ],
    );
  }
}
