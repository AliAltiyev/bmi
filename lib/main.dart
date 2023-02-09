import 'package:bmi/pages/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bmi());
}

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: const InputPage(),
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      theme: ThemeData.dark().copyWith(
          useMaterial3: true,
          sliderTheme: const SliderThemeData(
              thumbShape:
              RoundSliderThumbShape(enabledThumbRadius: 16, elevation: 10,),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 24)),
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.purple, foregroundColor: Colors.white38),
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0a0e21)),
          scaffoldBackgroundColor: const Color(0xff0a0e21)),
    );
  }
}
