//clases pascal case (GradientContainer)
// variable names will be camel case (bottomCenter)
//naming conventions for files is snake case (gradient_container.dart)
// import 'dart:math';

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
//final variable, can only be set once, during runtime

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: const Center(
        child: StartScreenWidget(),
      ),
    );
  }
}
