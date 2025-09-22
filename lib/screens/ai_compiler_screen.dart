// lib/screens/ai_compiler_screen.dart

import 'package:flutter/material.dart';
import 'package:learn_code/l10n/strings.dart';
import 'package:learn_code/screens/ai_chat_screen.dart';
import 'package:learn_code/services/ai_service.dart';
import 'package:learn_code/theme/app_theme.dart';
import 'package:learn_code/widgets/code_block.dart';

class AICompilerScreen extends StatefulWidget {
  const AICompilerScreen({super.key});

  @override
  State<AICompilerScreen> createState() => _AICompilerScreenState();
}

class _AICompilerScreenState extends State<AICompilerScreen>
    with SingleTickerProviderStateMixin {
  final AIService _aiService = AIService();
  final TextEditingController _codeController = TextEditingController();
  TabController? _tabController;

  final List<String> _supportedLanguages = ['Python', 'Java', 'C++'];
  String _selectedLanguage = 'Python';
  String _output = '';
  String _analysis = '';
  bool _isLoading = false;
  final int _maxCodeChars = 5000;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadCodeForLanguage(_selectedLanguage);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_analysis.isEmpty) {
      final l10n = L10n.of(context);
      _analysis = l10n.clickAiAnalysis;
    }
  }

  @override
  void dispose() {
    _tabController?.dispose();
    _codeController.dispose();
    super.dispose();
  }

  Future<void> _loadCodeForLanguage(String lang) async {
    // Kod kaydetme özelliği kaldırıldığı için her zaman varsayılan kod gösterilecek.
    switch (lang) {
      case 'Python':
        _codeController.text = 'print("Hello, World!")';
        break;
      case 'Java':
        _codeController.text =
        'public class Main {\n    public static void main(String[] args) {\n        System.out.println("Hello, World!");\n    }\n}';
        break;
      case 'C++':
        _codeController.text =
        '#include <iostream>\n\nint main() {\n    std::cout << "Hello, World!";\n    return 0;\n}';
        break;
    }
  }

  Future<void> _handleLanguageChange(String newLanguage) async {
    await _loadCodeForLanguage(newLanguage);
    setState(() {
      _selectedLanguage = newLanguage;
      _tabController?.animateTo(0);
    });
  }

  Future<void> _runAIAnalysis() async {
    final l10n = L10n.of(context);
    final codeText = _codeController.text.trim();
    if (_isLoading || codeText.isEmpty) return;

    if (codeText.length > _maxCodeChars) {
      setState(() {
        _output = l10n.codeTooLong;
        _analysis = l10n.analysisCodeTooLong(_maxCodeChars);
        _tabController?.animateTo(1);
      });
      return;
    }

    // Kullanım limiti kontrolü kaldırıldı.

    setState(() {
      _isLoading = true;
      _tabController?.animateTo(1);
    });

    try {
      final result = await _aiService.analyzeCode(codeText, _selectedLanguage);
      setState(() {
        _output = result['output'] ?? '// Bir hata oluştu.';
        _analysis = result['analysis'] ?? 'Analiz sonucu alınamadı.';
      });
    } catch (e) {
      setState(() {
        _analysis = l10n.errorPrefix(e.toString());
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          _buildHeader(context, l10n),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildCompilerView(l10n),
                _buildOutputView(l10n),
              ],
            ),
          ),
          _buildBottomActionBar(l10n),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, L10n l10n) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.fromLTRB(16, statusBarHeight + 12, 16, 12),
      color: AppTheme.darkPurple2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              l10n.aiCompilerTitle,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFf33292),
              ),
            ),
          ),
          const SizedBox(height: 12),
          TabBar(
            controller: _tabController,
            indicatorColor: const Color(0xFFf33292),
            labelColor: const Color(0xFFf33292),
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(text: l10n.compilerTab),
              Tab(text: l10n.outputTab),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCompilerView(L10n l10n) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _codeController,
        maxLines: null,
        expands: true,
        keyboardType: TextInputType.multiline,
        style: const TextStyle(
            fontFamily: 'monospace', fontSize: 16, color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: l10n.writeYourCodeHere,
          hintStyle: TextStyle(color: Colors.grey[600]),
          fillColor: Colors.grey[900],
          filled: true,
        ),
      ),
    );
  }

  Widget _buildOutputView(L10n l10n) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.outputTitle,
              style:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          CodeBlock(code: _output.isEmpty ? l10n.noOutputYet : _output),
          const SizedBox(height: 24),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Icon(Icons.psychology, color: Colors.amber),
            const SizedBox(width: 8),
            Text(l10n.aiAnalysisTitle,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber)),
          ]),
          const SizedBox(height: 8),
          Text(_analysis, style: const TextStyle(fontSize: 16, height: 1.5)),
        ],
      ),
    );
  }

  Widget _buildLanguageSelector() {
    return PopupMenuButton<String>(
      onSelected: _handleLanguageChange,
      offset: const Offset(0, -120),
      itemBuilder: (BuildContext context) {
        return _supportedLanguages.map((String language) {
          return PopupMenuItem<String>(
            value: language,
            child: Text(language),
          );
        }).toList();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Text(_selectedLanguage, style: const TextStyle(fontSize: 16)),
            const Icon(Icons.arrow_drop_up, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomActionBar(L10n l10n) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildLanguageSelector(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AIChatScreen()),
                  );
                },
                icon: const Icon(Icons.chat_bubble_outline_rounded, size: 18),
                label: Text(l10n.aiAssistantButton),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: _runAIAnalysis,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: _isLoading
                    ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                      color: Colors.white, strokeWidth: 3),
                )
                    : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(l10n.aiAnalysisButton,
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(width: 8),
                    const Icon(Icons.arrow_forward, size: 18),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}