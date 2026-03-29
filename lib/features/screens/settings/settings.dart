import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/layout/app_layout.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Center(child: Text('Settings Page')),
    );
  }
}
