// lib/widgets/code_block.dart

import 'package:flutter/material.dart';
import 'package:learn_code/theme/app_theme.dart';

class CodeBlock extends StatelessWidget {
  final String code;
  final String? explanation;

  const CodeBlock({
    super.key,
    required this.code,
    this.explanation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: AppTheme.darkPurple2,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: AppTheme.lightPurple),
            ),
            child: Text(
              code,
              style: const TextStyle(
                fontFamily: 'monospace',
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          if (explanation != null)
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 8.0, right: 8.0),
              child: Text(
                explanation!,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
        ],
      ),
    );
  }
}