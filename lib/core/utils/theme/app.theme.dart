import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/core/utils/app.colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    ),
  );
}