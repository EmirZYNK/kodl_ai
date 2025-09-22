import 'package:flutter/material.dart';

class AppTheme {
  // === RENKLER ===
  static const Color darkPurple = Color(0xFF1A1822);
  static const Color darkPurple2 = Color(0xFF24212E);
  static const Color deepBlue = Color(0xFF1E93E6);
  static const Color midPurple = Color(0xFF774FE8);
  static const Color lightPurple = Color(0xFF774FE8);
  static const Color textColor = Colors.white;
  static const Color lightBlue = Color(0xFF2E638C);

  // === GRADYANLAR ===
  static const LinearGradient mainGradient = LinearGradient(
    colors: [midPurple, deepBlue],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );

  static const LinearGradient lessonCardGradient = LinearGradient(
    colors: [deepBlue, lightBlue],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static final BoxDecoration gradientDecoration = BoxDecoration(
    gradient: mainGradient,
  );

  // === TEMA VERİSİ ===
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkPurple,
    fontFamily: 'Poppins',
    cardTheme: CardThemeData(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: darkPurple.withOpacity(0.8),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.6),
    ),
  );
}