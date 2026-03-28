import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/app.dart';
import 'package:flutter_inventory_desktop_application/core/utils/theme/app.theme-provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
      ],
      child: const App(),
    ),
  );
}
