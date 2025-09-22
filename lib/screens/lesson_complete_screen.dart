// lib/screens/lesson_complete_screen.dart

import 'package:flutter/material.dart';
import 'package:learn_code/l10n/strings.dart';
import 'package:learn_code/theme/app_theme.dart';
import 'package:lottie/lottie.dart';

class LessonCompleteScreen extends StatelessWidget {
  final String lessonId;

  const LessonCompleteScreen({super.key, required this.lessonId});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      body: Container(
        decoration: AppTheme.gradientDecoration,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Lottie.asset(
                  'assets/animations/success.json',
                  height: 250,
                  width: 250,
                  repeat: true,
                ),
                const SizedBox(height: 24),
                Text(
                  l10n.congratulations,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  l10n.lessonCompleteSubtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    // İlerleme kaydı yok, sadece bir önceki ekrana dön.
                    // '/roadmap' rotası LearnScreen içindeki Navigator'da tanımlı.
                    if (context.mounted) {
                      Navigator.of(context)
                          .popUntil(ModalRoute.withName('/roadmap'));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: Text(
                    l10n.finishAndReturnButton, // L10n'dan alınabilir
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}