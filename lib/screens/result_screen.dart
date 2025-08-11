import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class ResultScreenWidget extends StatefulWidget {
  const ResultScreenWidget({super.key});

  @override
  State<ResultScreenWidget> createState() {
    return _ResultScreenState();
  }
}

class _ResultScreenState extends State<ResultScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StyledText("This is a Result Screen."),
      ],
    );
  }
}
