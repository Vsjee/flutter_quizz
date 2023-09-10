import 'package:flutter/material.dart';

import 'package:quizz_app/data/questions.dart';

import '../ui/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currQuestionIdx = 0;

  void answerQuestion() {
    setState(() {
      currQuestionIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currQuestion = questions[currQuestionIdx];

    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currQuestion.questions,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 30),
          ...currQuestion.getSuffledAnswers().map((item) {
            return AnswerButton(item, answerQuestion);
          }),
        ],
      ),
    );
  }
}
