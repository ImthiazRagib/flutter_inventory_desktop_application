import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/layout/app_layout.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppLayout(
        currentRoute: 'home',
        onNavigate: (page) {
          // Handle navigation
        },
        onSearchChanged: (value) {
          // Handle search
        },
        onUserMenuSelected: (value) {
          // Handle user menu selection
        },
        pageTitle: '',
        child: Center(child: Text('Dashboard XD')),
      ),
    );
  }
}
