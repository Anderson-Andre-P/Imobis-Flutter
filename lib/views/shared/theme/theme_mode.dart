import 'package:flutter/material.dart';

class Mytheme with ChangeNotifier {
  static bool isDark = true;
  ThemeMode currentTheme() {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
