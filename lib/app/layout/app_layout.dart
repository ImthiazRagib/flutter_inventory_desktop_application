import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/layout/primary_sidebar.dart';
import 'package:flutter_inventory_desktop_application/core/utils/app.colors.dart';
import 'package:flutter_inventory_desktop_application/features/common/nav_link.dart';
import 'package:go_router/go_router.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({
    super.key,
    required this.child,
    this.pageTitle = '',
  });

  final Widget child;
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    return Scaffold(
      body: Row(
        children: [
          PrimarySidebar(currentRoute: location),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: AppColors.lightColor,
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        pageTitle,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 20),
                      NavLink(
                        label: 'Dashboard',
                        isActive: location == '/',
                        onTap: () => context.go('/'),
                      ),
                      const SizedBox(width: 12),
                      NavLink(
                        label: 'Reports',
                        isActive: location == '/reports',
                        onTap: () => context.go('/reports'),
                      ),
                      const SizedBox(width: 12),
                      NavLink(
                        label: 'Settings',
                        isActive: location == '/settings',
                        onTap: () => context.go('/settings'),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 260,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search entries...',
                            prefixIcon: const Icon(Icons.search),
                            isDense: true,
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          print("DD-$value");
                          context.go('/$value');
                        },
                        itemBuilder: (context) => const [
                          PopupMenuItem(
                            value: 'profile',
                            child: Text('Profile'),
                          ),
                          PopupMenuItem(
                            value: 'settings',
                            child: Text('Settings'),
                          ),
                          PopupMenuItem(value: 'logout', child: Text('Logout')),
                        ],
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                context.push('/notifications');
                              },
                              icon: Icon(Icons.notifications),
                            ),
                            CircleAvatar(radius: 18, child: Icon(Icons.person)),
                            // SizedBox(width: 8),
                            // Text('Imthiaz'),
                            // SizedBox(width: 4),
                            // Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey.shade100,
                    padding: const EdgeInsets.all(24),
                    child: child,
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
