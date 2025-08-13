import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/screens/question_screen.dart';

const Alignment alignmentTopLeft = Alignment.topLeft;
//type annotation. explicitly stating the type of the variable
const alignmentBottomRight = Alignment.bottomRight;
//type inference. base on initial value, dart infers the type

const topLeft = Alignment.topLeft;
//constant variable, values are actually replaced during compile time,
//values should already be known like literals

final bottomRight = Alignment.bottomRight;

class QuizManager extends StatefulWidget {
  const QuizManager({super.key});

  @override
  State<QuizManager> createState() => _QuizManagerState();
}

class _QuizManagerState extends State<QuizManager> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreenWidget(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreenWidget();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 214, 8, 251),
                Color.fromARGB(210, 224, 216, 162),
              ],
              begin: alignmentTopLeft,
              end: alignmentBottomRight,
            ),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
