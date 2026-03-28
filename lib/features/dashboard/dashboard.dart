import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/features/dashboard/appbar/app-bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomTopBar(
        onNavigate: (page) {
          // Handle navigation
        },
        onSearchChanged: (value) {
          // Handle search
        },
        onUserMenuSelected: (value) {
          // Handle user menu selection
        },
      ),
      body: Center(
        child: Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
