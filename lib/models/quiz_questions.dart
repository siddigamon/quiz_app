//domain class
class QuizQuestions {
  final String question;
  final List<String> answers;

  const QuizQuestions(
    this.question,
    this.answers,
  );

  List<String> getShuffledAnswers() {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
