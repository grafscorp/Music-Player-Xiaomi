import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool darkTheme = false;

  void changeTheme(bool isDark) {
    darkTheme = isDark;
    notifyListeners();
  }

  bool isDarkTheme() {
    return darkTheme;
  }
}
