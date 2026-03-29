import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/layout/app_layout.dart';
import 'package:go_router/go_router.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppLayout(
        pageTitle: '',
        child: Center(child: Text('Dashboard XD')),
      ),
    );
  }
}
