import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/core/utils/app.colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  Color primaryColor() {
    return _themeMode == ThemeMode.light ? AppColors.primaryColor : AppColors.darkColor;
  }

  Color accentColor() {
    return _themeMode == ThemeMode.light ? AppColors.accentColor : AppColors.darkColor;
  }

  Color backgroundColor() {
    return _themeMode == ThemeMode.light ? AppColors.backgroundColor : AppColors.darkBackgroundColor;
  }

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
  
}