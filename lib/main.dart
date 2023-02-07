import 'package:bmi/pages/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      theme: ThemeData.dark().copyWith(
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.purple, foregroundColor: Colors.white38),
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0a0e21)),
          scaffoldBackgroundColor: const Color(0xff0a0e21)),
      home: const InputPage(),
    );
  }
}
