import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String lang = "en";
  ThemeMode theming = ThemeMode.light;

  changeLanguage(String local) {
    lang = local;
    notifyListeners();
  }

  changeTheming(ThemeMode mode) {
    theming = mode;
    notifyListeners();
  }
}
