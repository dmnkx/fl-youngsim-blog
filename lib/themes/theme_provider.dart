import 'package:fl_youngsim_blog/themes/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  void toggleTheme() {
    _themeData = _themeData == lightMode ? darkMode : lightMode;
    notifyListeners();
  }
}
