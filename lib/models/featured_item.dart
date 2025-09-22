import 'package:flutter/material.dart';

class FeaturedItem {
  final String title;
  final String subtitle;
  final String animationPath;
  final String buttonText;
  final Function(BuildContext) onTap;

  FeaturedItem({
    required this.title,
    required this.subtitle,
    required this.animationPath,
    required this.buttonText,
    required this.onTap,
  });
}