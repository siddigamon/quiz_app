import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.onTapped, {super.key});

  final String answer;
  final void Function() onTapped;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: ElevatedButton(
        onPressed: onTapped,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amberAccent,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.all(10),
        ),
        child: Text(
          answer,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
