import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Answers'),
        const SizedBox(
          height: 20,
        ),
        const Text('List of answers and questions'),
        const SizedBox(
          height: 20,
        ),
        TextButton(onPressed: () {}, child: const Text('Restar F1 Quizz'))
      ],
    );
  }
}
