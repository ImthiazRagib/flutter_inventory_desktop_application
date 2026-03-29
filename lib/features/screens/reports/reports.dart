import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/layout/app_layout.dart';
import 'package:go_router/go_router.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    final String currentRoute = GoRouterState.of(context).uri.toString();
    void onNavigate(String page) {
      context.go(page);
    }

    return AppLayout(
      currentRoute: currentRoute,
      onNavigate: onNavigate,
      onSearchChanged: (value) {
        // Handle search
      },
      onUserMenuSelected: (value) {
        // Handle user menu selection
      },
      child: Center(child: Text('Reports')),
    );
  }
}
