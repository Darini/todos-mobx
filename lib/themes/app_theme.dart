import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFFFA4d73);
const accentColor = Color(0xFF000000);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
      ),
      displaySmall: TextStyle(
        fontFamily: 'Poppins',
      ),
      displayMedium: TextStyle(
        fontFamily: 'Poppins',
      ),
      displayLarge: TextStyle(
        fontFamily: 'Poppins',
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Poppins',
      ),
      titleSmall: TextStyle(
        fontFamily: 'Poppins',
      ),
      titleMedium: TextStyle(
        fontFamily: 'Poppins',
      ),
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
      ),
      labelSmall: TextStyle(
        fontFamily: 'Poppins',
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
      ),
      labelLarge: TextStyle(
        fontFamily: 'Poppins',
      ),
    ),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFFFAFAFA),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}
