import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/core/models/questions_model.dart';
import 'package:quizz_app/core/services/questions_service.dart';

import 'package:quizz_app/data/questions.dart';

import '../ui/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currQuestionIdx = 0;
  QuestionsResponse? questionsResponse;
  var isloaded = false;

  @override
  void initState() {
    super.initState();

    // fetch data from API
    getData();
  }

  getData() async {
    questionsResponse = await QuestionsService().getData();

    if (questionsResponse != null) {
      setState(() {
        isloaded = true;
      });
    }
  }

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currQuestionIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currQuestion = questions[currQuestionIdx];

    return Visibility(
        visible: isloaded,
        replacement: const Center(child: CircularProgressIndicator()),
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currQuestion.questions,
                style: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 202, 210, 251),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 30),
              ...currQuestion.getSuffledAnswers().map((item) {
                return AnswerButton(item, () {
                  answerQuestion(item);
                });
              }),
            ],
          ),
        ));
  }
}
