import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/app.dart';
import 'package:flutter_inventory_desktop_application/core/utils/app.colors.dart';
import 'package:flutter_inventory_desktop_application/core/utils/theme/app.theme-provider.dart';
import 'package:flutter_inventory_desktop_application/core/utils/theme/app.theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
      ],
      child: const App(),
    );
  }
}
