import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF145C3B);
  static const Color primaryLight = Color(0xFF1F7A4D);
  static const Color ink = Color(0xFF102018);
  static const Color muted = Color(0xFF66736A);
  static const Color surface = Colors.white;
  static const Color background = Color(0xFFF7F9F6);
  static const Color activeSurface = Color(0xFFDFF2E6);
  static const Color softSurface = Color(0xFFEEF5EE);
  static const Color line = Color(0xFFD8E3D8);
  static const Color accent = Color(0xFFF2B84B);
  static const Color accentSurface = Color(0xFFFFF3D2);
}

class AppTheme {
  static ThemeData get light {
    final base = ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primaryLight,
        surface: AppColors.surface,
      ),
    );

    return base.copyWith(
      textTheme: base.textTheme.apply(
        bodyColor: AppColors.ink,
        displayColor: AppColors.ink,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.ink,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppColors.ink,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          height: 1.3,
        ),
      ),
    );
  }
}
