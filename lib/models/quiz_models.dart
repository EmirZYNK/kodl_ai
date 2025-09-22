class MultipleChoiceQuestion {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  MultipleChoiceQuestion({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
}

class CodeCompletionQuestion {
  final String questionText;
  final String codeTemplate;
  final List<String> correctAnswers;
  final List<String> options;

  CodeCompletionQuestion({
    required this.questionText,
    required this.codeTemplate,
    required this.correctAnswers,
    required this.options,
  });
}