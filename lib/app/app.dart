import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/router/app-router.dart';
import 'package:flutter_inventory_desktop_application/core/utils/theme/app.theme-provider.dart';
import 'package:flutter_inventory_desktop_application/core/utils/theme/app.theme.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeProvider.themeMode,
        routerConfig: router,
      );
    });
  }
}