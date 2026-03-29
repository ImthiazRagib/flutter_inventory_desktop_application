import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/layout/app_layout.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Center(child: Text('Reports')),
    );
  }
}
