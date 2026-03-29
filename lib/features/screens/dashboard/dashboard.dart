import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/layout/app_layout.dart';
import 'package:go_router/go_router.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    print(location);
    return Scaffold(
      body: AppLayout(
        currentRoute: location,
        onNavigate: (page) {
          print(page);
          // Handle navigation
          print(page);
          GoRouter.of(context).go(page);
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
