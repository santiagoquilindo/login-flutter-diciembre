import 'package:flutter/material.dart';

class AppStyles {
  static const Color backgroundColor = Color(0xFF1E1E1E);
  static const Color primaryColor = Color(0xFF4CAF50);
  static const Color textColor = Colors.white;
  static const Color textSecondaryColor = Colors.white70;
  static const Color inputFieldColor = Color(0xFF2E2E2E);

  static InputDecoration inputDecoration(String label) {
    return InputDecoration(
      filled: true,
      fillColor: inputFieldColor,
      labelText: label,
      labelStyle: const TextStyle(color: textSecondaryColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    );
  }
}

