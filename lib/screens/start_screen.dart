import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreenWidget extends StatelessWidget {
  const StartScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/quiz-logo.png", width: 300),
        const SizedBox(height: 70),
        const StyledText("Learn Flutter the fun way!"),
        const SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              " → Start Quiz ",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
