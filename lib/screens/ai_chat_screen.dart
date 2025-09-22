// lib/screens/ai_chat_screen.dart

import 'package:flutter/material.dart';
import 'package:learn_code/l10n/strings.dart';
import 'package:learn_code/models/chat_model.dart';
import 'package:learn_code/services/ai_service.dart';
import 'package:learn_code/theme/app_theme.dart';

class AIChatScreen extends StatefulWidget {
  const AIChatScreen({super.key});

  @override
  State<AIChatScreen> createState() => _AIChatScreenState();
}

class _AIChatScreenState extends State<AIChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final AIService _aiService = AIService();
  final List<ChatMessage> _messages = [];
  bool _isLoading = false;

  final int _minChars = 15;
  final int _maxChars = 2000;

  bool _isInitialMessageAdded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialMessageAdded) {
      final l10n = L10n.of(context);
      _messages.add(
        ChatMessage(
          text: l10n.aiWelcomeMessage,
          isUserMessage: false,
        ),
      );
      _isInitialMessageAdded = true;
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() async {
    final l10n = L10n.of(context);
    final messageText = _textController.text.trim();
    if (_isLoading || messageText.isEmpty) return;

    if (messageText.length > _maxChars) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(l10n.aiMessageTooLong),
        backgroundColor: Colors.red,
      ));
      return;
    }

    if (messageText.length < _minChars) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(l10n.aiMessageTooShort),
        backgroundColor: Colors.orange,
      ));
      return;
    }

    // Kullanım hakkı kontrolü tamamen kaldırıldı.

    setState(() {
      _messages.add(ChatMessage(text: messageText, isUserMessage: true));
      _isLoading = true;
    });
    _textController.clear();
    _scrollToBottom();

    try {
      final aiResponse = await _aiService.getChatResponse(messageText);
      setState(() {
        _messages.add(ChatMessage(text: aiResponse, isUserMessage: false));
      });
    } catch (e) {
      _messages.add(ChatMessage(
          text: l10n.aiGenericError, isUserMessage: false));
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.aiAssistantTitle),
        titleTextStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppTheme.textColor,
        ),
        // Premium butonu ve kullanım hakkı göstergesi kaldırıldı.
        flexibleSpace: Container(decoration: AppTheme.gradientDecoration),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(8.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _MessageBubble(message: _messages[index]);
              },
            ),
          ),
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: LinearProgressIndicator(),
            ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    final l10n = L10n.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          8, 8, 8, MediaQuery.of(context).padding.bottom + 8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              onSubmitted: (_) => _sendMessage(),
              decoration: InputDecoration(
                hintText: l10n.typeAMessage,
                filled: true,
                fillColor: AppTheme.deepBlue.withOpacity(0.8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: _sendMessage,
            style: IconButton.styleFrom(
              backgroundColor: AppTheme.lightPurple,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  final ChatMessage message;
  const _MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
      message.isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        decoration: BoxDecoration(
          color:
          message.isUserMessage ? AppTheme.lightPurple : AppTheme.deepBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          message.text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}