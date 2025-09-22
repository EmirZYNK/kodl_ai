// lib/screens/learn_screen.dart

import 'package:flutter/material.dart';
import 'package:learn_code/models/course_model.dart';
import 'package:learn_code/screens/courses_screen.dart';
import 'package:learn_code/screens/roadmap_screen.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  final GlobalKey<NavigatorState> _learnNavigatorKey =
  GlobalKey<NavigatorState>();

  void _selectCourse(Course course) {
    // İlerleme kaydı satırı kaldırıldı.
    _learnNavigatorKey.currentState?.pushNamed(
      '/roadmap',
      arguments: course,
    );
  }

  void _unselectCourse() {
    // İlerleme kaydı satırı kaldırıldı.
    _learnNavigatorKey.currentState?.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _learnNavigatorKey,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) =>
                  CoursesScreen(onCourseSelected: _selectCourse),
            );
          case '/roadmap':
            final course = settings.arguments as Course;
            return MaterialPageRoute(
              settings: settings, // Bu satır popUntil için önemli
              builder: (context) => RoadmapScreen(
                course: course,
                onBack: _unselectCourse,
              ),
            );
          default:
            return MaterialPageRoute(
                builder: (context) => const Text('Hata: Rota bulunamadı'));
        }
      },
    );
  }
}