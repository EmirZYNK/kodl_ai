// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:learn_code/l10n/strings.dart';
import 'package:learn_code/screens/ai_compiler_screen.dart';
import 'package:learn_code/screens/learn_screen.dart';
import 'package:learn_code/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Sadece iki sayfamız var: Öğren ve Derleyici
  static const List<Widget> _pages = <Widget>[
    LearnScreen(),
    AICompilerScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        color: AppTheme.darkPurple2,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            // 1. Sekme: Öğren
            BottomNavigationBarItem(
              icon: const Icon(Icons.school_outlined),
              activeIcon: const Icon(Icons.school),
              label: l10n.learnLabel,
            ),
            // 2. Sekme: Derleyici
            BottomNavigationBarItem(
              icon: const Icon(Icons.code_rounded),
              activeIcon: const Icon(Icons.terminal_rounded),
              label: l10n.compilerLabel,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: const Color(0xFFf33292),
          unselectedItemColor:
          theme.bottomNavigationBarTheme.unselectedItemColor,
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}