import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreenWidget extends StatefulWidget {
  const QuestionScreenWidget({super.key});

  @override
  State<QuestionScreenWidget> createState() => _QuestionScreenWidgetState();
}

class _QuestionScreenWidgetState extends State<QuestionScreenWidget> {
  var currentQuestionIndex = 0;
  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(Object context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            currentQuestion.question,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          // spread operator
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AnswerButton(answer, answerQuestion);
          }),
        ],
      ),
    );
  }
}
