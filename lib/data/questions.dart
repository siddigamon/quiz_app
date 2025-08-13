import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestions('What are the main building block of Flutter UIs?', [
    'Widgets',
    'Components',
    'Elements',
    'Modules',
  ]),
  QuizQuestions('How are flutter uis built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in a config file',
    'By using XCode for iOS and Android Studio for Android',
  ]),

  QuizQuestions('What\'s the purpose of of a Stateful Widget?', [
    'Update UI as data changes',
    'Update data as UI changes',
    'To optimize performance',
    'To handle user input',
  ]),

  QuizQuestions('How should you update data inside of StatefulWidgets', [
    'by calling setState()',
    'by using a StreamBuilder',
    'by using a FutureBuilder',
    'by using a ValueNotifier',
  ]),
];
