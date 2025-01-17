import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_colors.dart';

class AppTheme {
  static const String _fontName = 'UbuntuCondensed';

  static TextTheme _buildTextTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontSize: 96.0,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontSize: 43.0,
        fontWeight: FontWeight.normal,
      ),
      displaySmall: TextStyle(
        fontSize: 34.0,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
        color: AppColors.lightTextColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w300,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        color: AppColors.lightTextColor,
      ),
      labelSmall: TextStyle(
        fontSize: 10.0,
        fontWeight: FontWeight.w400,
        color: AppColors.lightTextColor,
      ),
    ).apply(
      fontFamily: _fontName,
    );
  }

  static lightMode() {
    return ThemeData(
      fontFamily: _fontName,
      textTheme: _buildTextTheme(),
    );
  }

  static darkMode() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      fontFamily: _fontName,
      textTheme: _buildTextTheme(),
    );
  }
}
