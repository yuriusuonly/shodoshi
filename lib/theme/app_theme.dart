import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color background = Color(0xFFF5F0E8);
  static const Color canvasWhite = Color(0xFFFDFCFA);
  static const Color ink = Color(0xFF2D2D2D);
  static const Color inkLight = Color(0xFF9E9E9E);
  static const Color guideStroke = Color(0xFFBDBDBD);
  static const Color activeStroke = Color(0xFFE8505B);
  static const Color activeStrokeLight = Color(0x40E8505B);
  static const Color success = Color(0xFF4CAF50);
  static const Color successLight = Color(0x404CAF50);
  static const Color cardBg = Colors.white;
  static const Color groupHeader = Color(0xFF5D4037);

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: activeStroke,
        brightness: Brightness.light,
        surface: background,
      ),
      scaffoldBackgroundColor: background,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: ink,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.2,
        ),
        iconTheme: IconThemeData(color: ink),
      ),
      cardTheme: CardThemeData(
        color: cardBg,
        elevation: 2,
        shadowColor: Colors.black.withAlpha(25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
