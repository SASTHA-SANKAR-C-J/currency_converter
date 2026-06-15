import 'package:flutter/material.dart';
import 'package:currency_converter/app/theme/app_colors.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    colorScheme: const ColorScheme.light(
    ),
    textSelectionTheme: TextSelectionThemeData(
    ),
  );
  static final darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
    ),
    textSelectionTheme: TextSelectionThemeData(
    ),
  );
}
