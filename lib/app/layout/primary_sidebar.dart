import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/core/utils/app.colors.dart';

class PrimarySidebar extends StatelessWidget {
  const PrimarySidebar({
    super.key,
    required this.currentRoute,
  });

  final String currentRoute;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      color: AppColors.accentColor,
      child: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Inventory App',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(color: Colors.white24, height: 1),

          const SizedBox(height: 12),

          _SidebarItem(
            icon: Icons.dashboard_outlined,
            title: 'Dashboard',
            routeName: '/dashboard',
            currentRoute: currentRoute,
          ),
          _SidebarItem(
            icon: Icons.inventory_2_outlined,
            title: 'Products',
            routeName: '/products',
            currentRoute: currentRoute,
          ),
          _SidebarItem(
            icon: Icons.info_outline,
            title: 'About',
            routeName: '/about',
            currentRoute: currentRoute,
          ),
          _SidebarItem(
            icon: Icons.settings_outlined,
            title: 'Settings',
            routeName: '/settings',
            currentRoute: currentRoute,
          ),

          const Spacer(),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: AppColors.primaryColor,
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Imthiaz Ragib',
                    style: TextStyle(
                      color: AppColors.lightColor,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  const _SidebarItem({
    required this.icon,
    required this.title,
    required this.routeName,
    required this.currentRoute,
  });

  final IconData icon;
  final String title;
  final String routeName;
  final String currentRoute;

  @override
  Widget build(BuildContext context) {
    final bool isActive = currentRoute == routeName;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Material(
        color: isActive ? AppColors.primaryColor.withOpacity(0.1) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            if (!isActive) {
              Navigator.pushReplacementNamed(context, routeName);
            }
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: isActive ? AppColors.primaryColor.withOpacity(0.1) : AppColors.primaryColor,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: isActive ? AppColors.primaryColor : AppColors.primaryColor,
                      fontWeight:
                          isActive ? FontWeight.bold : FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}