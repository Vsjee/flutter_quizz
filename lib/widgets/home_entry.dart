import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton(
            onPressed: () {},
            child: const Text('Start Quizz'),
          )
        ],
      ),
    );
  }
}
