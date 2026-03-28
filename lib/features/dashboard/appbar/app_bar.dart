import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/core/utils/app.colors.dart';
import 'package:flutter_inventory_desktop_application/features/common/nav_link.dart';

class CustomTopBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTopBar({
    super.key,
    required this.onNavigate,
    required this.onSearchChanged,
    required this.onUserMenuSelected,
    this.currentPage = 'Home',
  });

  final void Function(String page) onNavigate;
  final void Function(String value) onSearchChanged;
  final void Function(String value) onUserMenuSelected;
  final String currentPage;

  @override
  Size get preferredSize => const Size.fromHeight(72);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 72,
      titleSpacing: 16,
      elevation: 2,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Text(
              'Inventory',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 24),

            NavLink(
              label: 'Home',
              isActive: currentPage == 'Home',
              onTap: () => onNavigate('Home'),
            ),
            const SizedBox(width: 12),
            NavLink(
              label: 'Products',
              isActive: currentPage == 'Products',
              onTap: () => onNavigate('Products'),
            ),
            const SizedBox(width: 12),
            NavLink(
              label: 'About',
              isActive: currentPage == 'About',
              onTap: () => onNavigate('About'),
            ),

            const SizedBox(width: 30),

            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 320),
                child: TextField(
                  onChanged: onSearchChanged,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: const Icon(Icons.search),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 20),

            PopupMenuButton(
              borderRadius: BorderRadius.circular(8),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        child: Icon(Icons.shopping_bag_rounded, size: 20),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Imthiaz',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'imthiaz@email.com',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'Profile',
                  child: Text('Profile'),
                ),
                const PopupMenuItem<String>(
                  value: 'Settings',
                  child: Text('Settings'),
                ),
                const PopupMenuItem<String>(
                  value: 'Logout',
                  child: Text('Logout'),
                ),
              ],
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      child: Icon(Icons.shopping_bag_rounded, size: 14),
                    ),
                    SizedBox(width: 8),
                    Text('Al Tunaji', style: TextStyle(fontSize: 14, color: AppColors.lightColor))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}