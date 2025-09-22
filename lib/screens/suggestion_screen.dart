// lib/screens/suggestion_screen.dart (SUPABASE KALDIRILDI)

import 'package:flutter/material.dart';
import 'package:learn_code/l10n/strings.dart';
import 'package:learn_code/screens/home_screen.dart';
import 'package:learn_code/theme/app_theme.dart';

class SuggestionScreen extends StatelessWidget {
  final String userName;
  final String suggestedLanguage;

  const SuggestionScreen({
    super.key,
    required this.userName,
    required this.suggestedLanguage,
  });

  // Bu fonksiyon artık async değil ve içinde Supabase kodu yok.
  // Tek görevi ana ekrana yönlendirmek.
  void _navigateToHome(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const HomeScreen()),
          (Route<dynamic> route) => false, // Önceki tüm ekranları yığından kaldırır
    );
  }

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
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white.withOpacity(0.1),
                  child: Icon(
                    Icons.check_circle_outline,
                    color: Colors.greenAccent[400],
                    size: 80,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  l10n.suggestionWelcome(userName),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  l10n.yourSuggestedLanguageIs,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  suggestedLanguage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(height: 48),
                ElevatedButton(
                  onPressed: () => _navigateToHome(context), // Sadece yönlendirme yapar
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2E638C),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    l10n.startWithSuggestedLanguage(suggestedLanguage),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => _navigateToHome(context), // Sadece yönlendirme yapar
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white70,
                  ),
                  child: Text(l10n.chooseAnotherLanguage),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}