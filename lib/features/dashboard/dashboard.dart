import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
