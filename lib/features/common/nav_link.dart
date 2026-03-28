import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/core/utils/app.colors.dart';

class NavLink extends StatelessWidget {
  const NavLink({
    super.key,
    required this.label,
    required this.onTap,
    required this.isActive,
  });

  final String label;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                color: isActive ? AppColors.primaryColor : AppColors.darkColor,
                fontSize: 14,
              ),
            ),

            SizedBox(height: 4),

            // 🔻 Underline
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 2,
              width: isActive ? 30 : 0,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
