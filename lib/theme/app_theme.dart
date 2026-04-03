import 'package:flutter/material.dart';

class AppColors {
  // Primary teal palette (from logo)
  static const teal = Color(0xFF4E7A7C);
  static const tealLight = Color(0xFF6A9A9C);
  static const tealLighter = Color(0xFF8AB4B6);
  static const sage = Color(0xFFC5D8DA);
  static const sageLight = Color(0xFFDCE8E9);

  // Legacy aliases – mapped to teal palette
  static const indigo = teal;
  static const purple = tealLight;

  static const green = Color(0xFF22C55E);
  static const greenLight = Color(0xFF86EFAC);
  static const red = Color(0xFFEF4444);
  static const redLight = Color(0xFFFCA5A5);
  static const amber = Color(0xFFF59E0B);
  static const amberLight = Color(0xFFFBBF24);

  static const bgDark = Color(0xFF0F1F20);
  static const bgMid = Color(0xFF1A2F31);
  static const cardBg = Color(0xB31A2F31); // 70% opacity
  static const surfaceDark = Color(0x802A4547); // 50% opacity

  static const textPrimary = Color(0xFFF1F5F9);
  static const textSecondary = Color(0xFFE2E8F0);
  static const textMuted = Color(0xFF94A3B8);
  static const textDim = Color(0xFF64748B);
  static const textDark = Color(0xFF475569);

  static const indigoSubtle = Color(0x264E7A7C); // 15%
  static const indigoBorder = Color(0x4D4E7A7C); // 30%
  static const greenSubtle = Color(0x2622C55E);
  static const greenBorder = Color(0x4D22C55E);
  static const redSubtle = Color(0x14EF4444);
  static const amberSubtle = Color(0x1AF59E0B);
  static const amberBorder = Color(0x4DF59E0B);

  static const gradientIndigo = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [teal, tealLight],
  );

  static const gradientBg = LinearGradient(
    begin: Alignment(-0.5, -1),
    end: Alignment(0.5, 1),
    colors: [bgDark, bgMid, bgDark],
  );

  static const gradientProgress = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [teal, tealLight],
  );
}

class AppSpacing {
  static const double xs = 4;
  static const double sm = 6;
  static const double md = 8;
  static const double lg = 12;
}

class AppTheme {
  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.bgDark,
    fontFamily: 'System',
    colorScheme: const ColorScheme.dark(
      primary: AppColors.teal,
      secondary: AppColors.tealLight,
      surface: AppColors.bgMid,
      error: AppColors.red,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 48, fontWeight: FontWeight.w800, color: AppColors.textPrimary),
      headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w800, color: AppColors.textPrimary),
      headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, height: 1.5, color: AppColors.textPrimary),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
      labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
      labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
      labelSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, letterSpacing: 0.8, color: AppColors.teal),
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1.6, color: AppColors.textPrimary),
      bodyMedium: TextStyle(fontSize: 14, height: 1.6, color: AppColors.textPrimary),
      bodySmall: TextStyle(fontSize: 12, color: AppColors.textDim),
    ),
  );
}
