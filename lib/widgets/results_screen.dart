import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/widgets/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'questions_idx': i,
          'question': questions[i].questions,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Answers'),
        const SizedBox(
          height: 20,
        ),
        QuestionsSummary(
          summaryData: getSummaryData(),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(onPressed: () {}, child: const Text('Restar F1 Quizz'))
      ],
    );
  }
}
