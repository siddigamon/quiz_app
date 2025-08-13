import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreenWidget extends StatelessWidget {
  const StartScreenWidget(this.onStartQuiz, {super.key});

  final void Function() onStartQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/quiz-logo.png", width: 300),
        const SizedBox(height: 70),
        const StyledText("Learn Flutter the fun way!"),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: onStartQuiz,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white, width: 2),
          ),
          child: const Text(
            " → Start Quiz ",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ],
    );
  }
}
