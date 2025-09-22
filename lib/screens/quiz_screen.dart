import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:learn_code/data/data_provider.dart';
import 'package:learn_code/l10n/strings.dart';
import 'package:learn_code/models/quiz_models.dart';
import 'package:learn_code/screens/lesson_complete_screen.dart';
import 'package:learn_code/screens/lesson_screen.dart';
import 'package:learn_code/theme/app_theme.dart';
import 'package:learn_code/widgets/code_completion_widget.dart';
import 'package:learn_code/models/roadmap_model.dart';

class QuizScreen extends StatefulWidget {
  final List<dynamic> questions;
  final String lessonId;
  final String courseName;
  final int subLessonIndex;

  const QuizScreen({
    super.key,
    required this.questions,
    required this.lessonId,
    required this.courseName,
    required this.subLessonIndex,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  bool _showResult = false;
  bool _isCorrect = false;

  int? _selectedOptionIndex;
  List<String?>? _codeAnswers;

  void _handleSubmit() {
    final currentQuestion = widget.questions[_currentQuestionIndex];
    bool correct = false;

    if (currentQuestion is MultipleChoiceQuestion) {
      if (_selectedOptionIndex == null) return;
      correct = _selectedOptionIndex == currentQuestion.correctAnswerIndex;
    } else if (currentQuestion is CodeCompletionQuestion) {
      if (_codeAnswers == null || _codeAnswers!.contains(null)) return;
      correct = const ListEquality()
          .equals(_codeAnswers, currentQuestion.correctAnswers);
    }

    setState(() {
      _showResult = true;
      _isCorrect = correct;
    });
  }

  void _nextQuestion() {
    final bool isLastQuestionOfQuiz =
        _currentQuestionIndex >= widget.questions.length - 1;

    if (isLastQuestionOfQuiz) {
      final languageCode = Localizations.localeOf(context).languageCode;
      final lessonContent = DataProvider.getLessonContent(
        widget.courseName,
        widget.lessonId,
        languageCode,
      );
      final subLessons = lessonContent?['sub_lessons'] as List?;

      final int nextSubLessonIndex = widget.subLessonIndex + 1;

      if (subLessons != null && nextSubLessonIndex < subLessons.length) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LessonScreen(
              lesson: Lesson(id: widget.lessonId, title: ''),
              courseName: widget.courseName,
              subLessonIndex: nextSubLessonIndex,
            ),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                LessonCompleteScreen(lessonId: widget.lessonId),
          ),
        );
      }
    } else {
      setState(() {
        _currentQuestionIndex++;
        _resetForNextQuestion();
      });
    }
  }

  void _tryAgain() {
    setState(() {
      _resetForNextQuestion();
    });
  }

  void _resetForNextQuestion() {
    _showResult = false;
    _isCorrect = false;
    _selectedOptionIndex = null;
    _codeAnswers = null;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final currentQuestion = widget.questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          l10n.questionProgress(
              _currentQuestionIndex + 1, widget.questions.length),
          style: const TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: AppTheme.gradientDecoration,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: currentQuestion is MultipleChoiceQuestion
                ? _buildMultipleChoiceView(currentQuestion)
                : _buildCodeCompletionView(
                currentQuestion as CodeCompletionQuestion),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: _buildBottomButtons(l10n),
          ),
        ],
      ),
    );
  }

  Widget _buildMultipleChoiceView(MultipleChoiceQuestion question) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              question.questionText,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          ...List.generate(question.options.length, (index) {
            Color borderColor = Colors.grey;
            if (_showResult) {
              if (index == question.correctAnswerIndex) {
                borderColor = Colors.green;
              } else if (index == _selectedOptionIndex) {
                borderColor = Colors.red;
              }
            } else if (index == _selectedOptionIndex) {
              borderColor = Colors.blueAccent;
            }

            return InkWell(
              onTap: _showResult
                  ? null
                  : () => setState(() => _selectedOptionIndex = index),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: borderColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(question.options[index],
                    style: const TextStyle(fontSize: 16)),
              ),
            );
          }),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildCodeCompletionView(CodeCompletionQuestion question) {
    return CodeCompletionWidget(
      key: ValueKey(question.questionText),
      question: question,
      onAnswerChanged: (answers) {
        _codeAnswers = answers;
      },
    );
  }

  Widget _buildBottomButtons(L10n l10n) {
    if (_showResult) {
      if (_isCorrect) {
        return ElevatedButton(
          onPressed: _nextQuestion,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 50),
          ),
          child: Text(l10n.continueButton),
        );
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              l10n.wrongAnswerTryAgain,
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: TextButton(
                        onPressed: _nextQuestion, child: Text(l10n.skipButton))),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: _tryAgain,
                    child: Text(l10n.tryAgainButton),
                  ),
                ),
              ],
            ),
          ],
        );
      }
    } else {
      return ElevatedButton(
        onPressed: _handleSubmit,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
        ),
        child: Text(l10n.submitButton),
      );
    }
  }
}