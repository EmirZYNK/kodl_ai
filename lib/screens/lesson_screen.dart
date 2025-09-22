import 'package:flutter/material.dart';
import 'package:learn_code/data/data_provider.dart';
import 'package:learn_code/l10n/strings.dart';
import 'package:learn_code/models/roadmap_model.dart';
import 'package:learn_code/screens/lesson_complete_screen.dart';
import 'package:learn_code/screens/quiz_screen.dart';
import 'package:learn_code/theme/app_theme.dart';
import 'package:learn_code/widgets/code_block.dart';

class LessonScreen extends StatefulWidget {
  final Lesson lesson;
  final String courseName;
  final int subLessonIndex;

  const LessonScreen({
    super.key,
    required this.lesson,
    required this.courseName,
    this.subLessonIndex = 0,
  });

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  Map<String, dynamic>? _subLessonData;
  late List<Map<String, dynamic>> _lessonParts;
  int _visiblePartsCount = 0;
  bool _showNextButton = false;
  bool _isInitialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialized) {
      final languageCode = Localizations.localeOf(context).languageCode;

      final lessonContent = DataProvider.getLessonContent(
        widget.courseName,
        widget.lesson.id,
        languageCode,
      );

      final subLessons = lessonContent?['sub_lessons'] as List?;

      if (subLessons != null && widget.subLessonIndex < subLessons.length) {
        _subLessonData = subLessons[widget.subLessonIndex];
      } else {
        _subLessonData = null;
      }

      _lessonParts = (_subLessonData?['parts'] as List?)
          ?.map((item) => Map<String, dynamic>.from(item))
          .toList() ??
          [];

      if (_lessonParts.isNotEmpty) {
        _visiblePartsCount = 1;
        _showNextButton = false;
      } else {
        _visiblePartsCount = 0;
        _showNextButton = true;
      }
      _isInitialized = true;
    }
  }

  void _revealNextPart() {
    if (_showNextButton) return;

    setState(() {
      if (_visiblePartsCount < _lessonParts.length) {
        _visiblePartsCount++;
      } else {
        _showNextButton = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          _subLessonData?['title'] ?? widget.lesson.title,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: AppTheme.gradientDecoration,
        ),
      ),
      body: GestureDetector(
        onTap: _revealNextPart,
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Expanded(
                child: _lessonParts.isEmpty
                    ? Center(
                  child: Text(
                    l10n.lessonStartsWithQuiz,
                    textAlign: TextAlign.center,
                    style:
                    const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                )
                    : ListView.builder(
                  padding: const EdgeInsets.all(20.0),
                  itemCount: _visiblePartsCount,
                  itemBuilder: (context, index) {
                    final part = _lessonParts[index];
                    if (part.containsKey('code')) {
                      return CodeBlock(
                        code: part['code']!,
                        explanation: part['code_explanation'],
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: Text(
                          part['text']!,
                          style: const TextStyle(
                              fontSize: 18, height: 1.5),
                        ),
                      );
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _showNextButton
                    ? ElevatedButton(
                  onPressed: () {
                    final List<dynamic>? quizQuestions =
                    _subLessonData?['quiz'];

                    if (quizQuestions != null &&
                        quizQuestions.isNotEmpty) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(
                            questions: quizQuestions,
                            lessonId: widget.lesson.id,
                            courseName: widget.courseName,
                            subLessonIndex: widget.subLessonIndex,
                          ),
                        ),
                      );
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LessonCompleteScreen(
                            lessonId: widget.lesson.id,
                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: Text(l10n.continueButton),
                )
                    : Text(
                  l10n.tapToContinue,
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}