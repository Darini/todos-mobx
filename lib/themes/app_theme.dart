import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFFFA4d73);
const accentColor = Color(0xFF000000);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: TextTheme(
      bodyText1: const TextStyle(
        fontFamily: 'Poppins',
      ),
      bodyText2: const TextStyle(
        fontFamily: 'Poppins',
      ),
      bodySmall: const TextStyle(
        fontFamily: 'Poppins',
      ),
      bodyMedium: const TextStyle(
        fontFamily: 'Poppins',
      ),
      bodyLarge: const TextStyle(
        fontFamily: 'Poppins',
      ),
      button: const TextStyle(
        fontFamily: 'Poppins',
      ),
      caption: const TextStyle(
        fontFamily: 'Poppins',
      ),
      displaySmall: const TextStyle(
        fontFamily: 'Poppins',
      ),
      displayMedium: const TextStyle(
        fontFamily: 'Poppins',
      ),
      displayLarge: const TextStyle(
        fontFamily: 'Poppins',
      ),
      headline1: const TextStyle(
        fontFamily: 'Poppins',
      ),
      headline2: const TextStyle(
        fontFamily: 'Poppins',
      ),
      headline3: const TextStyle(
        fontFamily: 'Poppins',
      ),
      headline4: const TextStyle(
        fontFamily: 'Poppins',
      ),
      headline5: const TextStyle(
        fontFamily: 'Poppins',
      ),
      headline6: const TextStyle(
        fontFamily: 'Poppins',
      ),
      headlineSmall: const TextStyle(
        fontFamily: 'Poppins',
      ),
      headlineMedium: const TextStyle(
        fontFamily: 'Poppins',
      ),
      headlineLarge: const TextStyle(
        fontFamily: 'Poppins',
      ),
      overline: const TextStyle(
        fontFamily: 'Poppins',
      ),
      subtitle1: const TextStyle(
        fontFamily: 'Poppins',
      ),
      subtitle2: const TextStyle(
        fontFamily: 'Poppins',
      ),
      titleSmall: const TextStyle(
        fontFamily: 'Poppins',
      ),
      titleMedium: const TextStyle(
        fontFamily: 'Poppins',
      ),
      titleLarge: const TextStyle(
        fontFamily: 'Poppins',
      ),
      labelSmall: const TextStyle(
        fontFamily: 'Poppins',
      ),
      labelMedium: const TextStyle(
        fontFamily: 'Poppins',
      ),
      labelLarge: const TextStyle(
        fontFamily: 'Poppins',
      ),
    ),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFFFAFAFA),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}
