import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class QuestionScreenWidget extends StatefulWidget {
  const QuestionScreenWidget({super.key});

  @override
  State<QuestionScreenWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StyledText("This is a Question Screen."),
      ],
    );
  }
}
