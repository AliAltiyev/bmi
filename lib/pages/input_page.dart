import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Theme(
        data: ThemeData(
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: Colors.deepPurple)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [ReUsableCard(), ReUsableCard()],
            ),
          ),
          const ReUsableCard(),
          Expanded(
            child: Row(
              children: const [ReUsableCard(), ReUsableCard()],
            ),
          )
        ],
      ),
    );
  }
}

class ReUsableCard extends StatelessWidget {
  const ReUsableCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: Color(0xFF1d1e33),
            borderRadius: BorderRadius.all(Radius.circular(16))),
      ),
    );
  }
}
