// lib/screens/roadmap_screen.dart

import 'package:flutter/material.dart';
import 'package:learn_code/data/data_provider.dart';
import 'package:learn_code/l10n/strings.dart';
import 'package:learn_code/models/course_model.dart';
import 'package:learn_code/models/roadmap_model.dart';
import 'package:learn_code/screens/lesson_screen.dart';
import 'package:learn_code/theme/app_theme.dart';

class RoadmapScreen extends StatefulWidget {
  final Course course;
  final VoidCallback onBack;

  const RoadmapScreen({
    super.key,
    required this.course,
    required this.onBack,
  });

  @override
  State<RoadmapScreen> createState() => _RoadmapScreenState();
}

class _RoadmapScreenState extends State<RoadmapScreen> {
  int? _openSectionIndex;

  void _handleLessonClick(Lesson lesson) {
    // Kilit veya premium kontrolü yok, her ders doğrudan açılır.
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LessonScreen(
          lesson: lesson,
          courseName: widget.course.name,
          subLessonIndex: 0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Veriler artık FutureBuilder olmadan, doğrudan DataProvider'dan alınır.
    final languageCode = Localizations.localeOf(context).languageCode;
    final roadmapSections =
    DataProvider.getCourseRoadmap(widget.course.name, languageCode);

    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Container(
              decoration: AppTheme.gradientDecoration,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                bottom: 12,
                left: 16,
                right: 16,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: widget.onBack,
                        borderRadius: BorderRadius.circular(8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.menu, color: Colors.white),
                              const SizedBox(width: 12),
                              Text(
                                widget.course.name,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Premium butonu kaldırıldı.
                    ],
                  ),
                  // Streak tracker kaldırıldı.
                ],
              ),
            ),
            const Divider(height: 1, color: Colors.white24),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: roadmapSections.length,
                itemBuilder: (context, index) {
                  final section = roadmapSections[index];
                  final isOpen = _openSectionIndex == index;
                  return _buildSection(section, isOpen, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(RoadmapSection section, bool isOpen, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          InkWell(
            onTap: () =>
                setState(() => _openSectionIndex = isOpen ? null : index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              decoration: BoxDecoration(
                gradient: AppTheme.mainGradient,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const Icon(Icons.folder_open, size: 32, color: Colors.white),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(section.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                  ),
                  Icon(isOpen ? Icons.expand_less : Icons.expand_more,
                      size: 28),
                ],
              ),
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Container(
              height: isOpen ? null : 0,
              child: Column(
                children:
                section.lessons.map((lesson) => _buildLessonItem(lesson)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLessonItem(Lesson lesson) {
    return Container(
      margin: const EdgeInsets.only(top: 12.0),
      decoration: BoxDecoration(
        gradient: AppTheme.lessonCardGradient,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _handleLessonClick(lesson),
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.article_outlined,
                  color: Colors.white70,
                  size: 24,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(lesson.title,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.timer_outlined,
                              size: 14, color: Colors.white60),
                          const SizedBox(width: 4),
                          Text(lesson.duration,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.white60)),
                        ],
                      )
                    ],
                  ),
                ),
                // "Tamamlandı" ikonu kaldırıldı.
              ],
            ),
          ),
        ),
      ),
    );
  }
}