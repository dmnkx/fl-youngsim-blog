import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.black,
    secondary: Colors.black,
    surface: Colors.white,
  ),
  textTheme: lightTextTheme,
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Colors.black,
    secondary: Colors.black,
    surface: Colors.black,
  ),
  textTheme: darkTextTheme,
);

TextTheme lightTextTheme = TextTheme(
  bodyLarge: TextStyle(fontFamily: 'GowunDodum'),
  titleLarge: TextStyle(fontFamily: 'GowunDodum'),
  titleMedium: TextStyle(fontFamily: 'GowunDodum'),
  titleSmall: TextStyle(fontFamily: 'GowunDodum'),
  bodyMedium: TextStyle(fontFamily: 'GowunDodum'),
  bodySmall: TextStyle(fontFamily: 'GowunDodum'),
  labelLarge: TextStyle(fontFamily: 'GowunDodum'),
  labelMedium: TextStyle(fontFamily: 'GowunDodum'),
  labelSmall: TextStyle(fontFamily: 'GowunDodum'),
  headlineLarge: TextStyle(fontFamily: 'GowunDodum'),
  headlineMedium: TextStyle(fontFamily: 'GowunDodum'),
  headlineSmall: TextStyle(fontFamily: 'GowunDodum'),
  displayLarge: TextStyle(fontFamily: 'GowunDodum'),
  displayMedium: TextStyle(fontFamily: 'GowunDodum'),
  displaySmall: TextStyle(fontFamily: 'GowunDodum'),
);
TextTheme darkTextTheme = TextTheme(
  bodyLarge: TextStyle(fontFamily: 'GowunDodum'),
  titleLarge: TextStyle(fontFamily: 'GowunDodum'),
  titleMedium: TextStyle(fontFamily: 'GowunDodum'),
  titleSmall: TextStyle(fontFamily: 'GowunDodum'),
  bodyMedium: TextStyle(fontFamily: 'GowunDodum'),
  bodySmall: TextStyle(fontFamily: 'GowunDodum'),
  labelLarge: TextStyle(fontFamily: 'GowunDodum'),
  labelMedium: TextStyle(fontFamily: 'GowunDodum'),
  labelSmall: TextStyle(fontFamily: 'GowunDodum'),
);
