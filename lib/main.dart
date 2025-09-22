// lib/main.dart (BAŞLANGIÇ EKRANI GÜNCELLENDİ)

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:learn_code/l10n/strings.dart';
// import 'package:learn_code/screens/home_screen.dart'; // Artık burada gerekmiyor
import 'package:learn_code/screens/welcome_screen.dart'; // Yeni başlangıç ekranı
import 'package:learn_code/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const LearnCodeApp());
}

class LearnCodeApp extends StatelessWidget {
  const LearnCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('tr', ''), // Türkçe
        Locale('en', ''), // İngilizce
      ],
      onGenerateTitle: (context) {
        return L10n.of(context).appTitle;
      },
      // Uygulama artık WelcomeScreen ile başlıyor.
      home: const WelcomeScreen(),
    );
  }
}