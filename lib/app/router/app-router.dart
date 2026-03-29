
import 'package:flutter_inventory_desktop_application/features/screens/dashboard/dashboard.dart';
import 'package:flutter_inventory_desktop_application/features/screens/reports/reports.dart';
import 'package:flutter_inventory_desktop_application/features/screens/settings/settings.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    // Define your routes here
    // Example:
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) {
    //     return const MyHomePage(title: 'Home');
    //   },
    // ),
    ShellRoute(
      // builder: (context, state, child) {
      //   return child; // This will render the child route
      // },
      // redirect: (context, state) => {
      //   // Redirect to the dashboard route when the root path is accessed
      //   return null; // No redirection, just render the child route
      // },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const Dashboard();
          },
        ),
        GoRoute(
          path: '/reports',
          builder: (context, state) {
            return const ReportsPage();
          },
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) {
            return const SettingsPage();
          },
        ),
      ],
    ),
  ],
);
