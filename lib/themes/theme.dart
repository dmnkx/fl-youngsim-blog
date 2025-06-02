import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.black, // 메인 텍스트 색상
    secondary: Colors.green,
    surface: Colors.white,
  ),
  textTheme: lightTextTheme,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(backgroundColor: Colors.white),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Colors.blue,
    secondary: Colors.yellow,
    surface: Colors.black,
  ),
  textTheme: darkTextTheme,
  appBarTheme: AppBarTheme(backgroundColor: Colors.white),
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
