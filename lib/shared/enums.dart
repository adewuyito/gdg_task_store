import 'package:flutter/material.dart';

enum ButtonRole {
  destructive(
    deActiveColor: Color(0xFFEF9A9A),
    activeColor: Color(0xFFF44336),
  ),
  normal(
    deActiveColor: Color(0xFF90CAF9),
    activeColor: Color(0xFF2196F3),
  );

  const ButtonRole({required this.activeColor, required this.deActiveColor});

  final Color activeColor;
  final Color deActiveColor;
}