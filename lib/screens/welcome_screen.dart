// lib/screens/welcome_screen.dart (YENİDEN YAZILDI - SPLASH SCREEN)

import 'package:flutter/material.dart';
import 'package:learn_code/l10n/strings.dart';
import 'package:learn_code/screens/home_screen.dart';
import 'package:learn_code/theme/app_theme.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  // 3 saniye bekleyip ana ekrana yönlendiren fonksiyon
  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));

    if (mounted) { // Ekran hala ağaçtaysa yönlendirme yap
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF524fca), Color(0xFF9314BF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/animations/welcome_animation.gif',
                  height: 200,
                ),
                const SizedBox(height: 40),
                Text(
                  l10n.welcomeTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textColor),
                ),
                const SizedBox(height: 10),
                Text(
                  l10n.welcomeSubtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 18, color: Colors.white70),
                ),
                // Giriş butonları ve yükleme göstergesi kaldırıldı.
              ],
            ),
          ),
        ),
      ),
    );
  }
}