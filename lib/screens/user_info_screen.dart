// lib/screens/user_info_screen.dart

import 'package:flutter/material.dart';
import 'package:learn_code/l10n/strings.dart'; // <-- 1. IMPORT EKLE
import 'package:learn_code/screens/suggestion_screen.dart';
import 'package:learn_code/theme/app_theme.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  final _pageController = PageController();
  int _currentPageIndex = 0;
  final _nameController = TextEditingController();
  String? _selectedKnowledgeLevel;
  String? _selectedGoal;

  // GÜNCELLENDİ: L10n nesnesi parametre olarak eklendi
  String _getSuggestedLanguage(String? goal, L10n l10n) {
    if (goal == l10n.goalWeb) return "JavaScript";
    if (goal == l10n.goalGame) return "C++";
    if (goal == l10n.goalMobile) return "Kotlin";
    // goalJustLearning veya null/diğer durumlar için varsayılan
    return "Python";
  }

  @override
  void dispose() {
    _pageController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  // GÜNCELLENDİ: L10n nesnesi parametre olarak eklendi
  void _nextPage(L10n l10n) {
    if (_currentPageIndex == 0 && _nameController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(l10n.pleaseEnterYourName), // <-- DEĞİŞTİRİLDİ
        backgroundColor: Colors.red,
      ));
      return;
    }
    if (_currentPageIndex == 1 && _selectedKnowledgeLevel == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(l10n.pleaseSelectYourKnowledge), // <-- DEĞİŞTİRİLDİ
        backgroundColor: Colors.red,
      ));
      return;
    }
    if (_currentPageIndex == 2 && _selectedGoal == null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(l10n.pleaseSelectYourGoal), // <-- DEĞİŞTİRİLDİ
        backgroundColor: Colors.red,
      ));
      return;
    }

    if (_currentPageIndex == 2) {
      final userName =
      _nameController.text.isNotEmpty ? _nameController.text : l10n.buddy; // <-- DEĞİŞTİRİLDİ
      final suggestedLanguage = _getSuggestedLanguage(_selectedGoal, l10n);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SuggestionScreen(
            userName: userName,
            suggestedLanguage: suggestedLanguage,
          ),
        ),
      );
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Widget _buildQuestionTitle(String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: AppTheme.textColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context); // <-- 2. L10N NESNESİNİ AL

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: _currentPageIndex > 0
            ? IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            _pageController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        )
            : null,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: AppTheme.gradientDecoration,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (index) {
                      setState(() {
                        _currentPageIndex = index;
                      });
                    },
                    children: [
                      // GÜNCELLENDİ: l10n parametreleri eklendi
                      _buildNamePage(l10n),
                      _buildKnowledgePage(l10n),
                      _buildGoalPage(l10n),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32.0, top: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            3, (index) => _buildDotIndicator(index)),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () => _nextPage(l10n), // GÜNCELLENDİ
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2E638C),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            // <-- DEĞİŞTİRİLDİ
                            _currentPageIndex == 2
                                ? l10n.finishButton
                                : l10n.continueButton,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDotIndicator(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: _currentPageIndex == index ? 24 : 8,
      decoration: BoxDecoration(
        color: _currentPageIndex == index ? Colors.amber : Colors.white30,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  // GÜNCELLENDİ: l10n parametresi eklendi
  Widget _buildNamePage(L10n l10n) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildQuestionTitle(l10n.whatsYourName), // <-- DEĞİŞTİRİLDİ
        const SizedBox(height: 32),
        TextField(
          controller: _nameController,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22, color: Colors.white),
          cursorColor: Colors.amber,
          decoration: InputDecoration(
            hintText: l10n.typeNameHere, // <-- DEĞİŞTİRİLDİ
            hintStyle: const TextStyle(fontSize: 22, color: Colors.white54),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white54),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.amber, width: 2),
            ),
          ),
        ),
      ],
    );
  }

  // GÜNCELLENDİ: l10n parametresi eklendi
  Widget _buildKnowledgePage(L10n l10n) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildQuestionTitle(l10n.howDoYouRateYourKnowledge), // <-- DEĞİŞTİRİLDİ
        const SizedBox(height: 24),
        _buildRadioOption(l10n.knowledgeLevelNone, _selectedKnowledgeLevel,
                (value) { // <-- DEĞİŞTİRİLDİ
              setState(() => _selectedKnowledgeLevel = value);
            }),
        _buildRadioOption(l10n.knowledgeLevelBasic, _selectedKnowledgeLevel,
                (value) { // <-- DEĞİŞTİRİLDİ
              setState(() => _selectedKnowledgeLevel = value);
            }),
        _buildRadioOption(
            l10n.knowledgeLevelIntermediate, _selectedKnowledgeLevel, (value) { // <-- DEĞİŞTİRİLDİ
          setState(() => _selectedKnowledgeLevel = value);
        }),
      ],
    );
  }

  // GÜNCELLENDİ: l10n parametresi eklendi
  Widget _buildGoalPage(L10n l10n) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildQuestionTitle(l10n.whatIsYourGoal), // <-- DEĞİŞTİRİLDİ
        const SizedBox(height: 24),
        _buildRadioOption(l10n.goalWeb, _selectedGoal, (value) { // <-- DEĞİŞTİRİLDİ
          setState(() => _selectedGoal = value);
        }),
        _buildRadioOption(l10n.goalMobile, _selectedGoal, (value) { // <-- DEĞİŞTİRİLDİ
          setState(() => _selectedGoal = value);
        }),
        _buildRadioOption(l10n.goalGame, _selectedGoal, (value) { // <-- DEĞİŞTİRİLDİ
          setState(() => _selectedGoal = value);
        }),
        _buildRadioOption(l10n.goalJustLearning, _selectedGoal, (value) { // <-- DEĞİŞTİRİLDİ
          setState(() => _selectedGoal = value);
        }),
      ],
    );
  }

  Widget _buildRadioOption(
      String title, String? groupValue, Function(String?) onChanged) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white.withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      child: RadioListTile<String>(
        title: Text(title, style: const TextStyle(color: Colors.white)),
        value: title,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: Colors.amber,
        selected: groupValue == title,
        controlAffinity: ListTileControlAffinity.trailing,
      ),
    );
  }
}