import 'package:flutter/material.dart';
import 'package:flutter_inventory_desktop_application/app/layout/primary_sidebar.dart';
import 'package:flutter_inventory_desktop_application/features/common/nav_link.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({
    super.key,
    required this.child,
    required this.currentRoute,
    this.pageTitle = '',
    this.currentPage = 'Home',
    required this.onNavigate,
    required this.onSearchChanged,
    required this.onUserMenuSelected,
  });

  final Widget child;
  final String currentRoute;
  final String pageTitle;
  final String currentPage;

  final void Function(String page) onNavigate;
  final void Function(String value) onSearchChanged;
  final void Function(String value) onUserMenuSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          PrimarySidebar(currentRoute: currentRoute),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                      // NavLink(
                      //   label: 'Home',
                      //   isActive: currentPage == 'Home',
                      //   onTap: () => onNavigate('Home'),
                      // ),
                      // const SizedBox(width: 12),
                      // NavLink(
                      //   label: 'Products',
                      //   isActive: currentPage == 'Products',
                      //   onTap: () => onNavigate('Products'),
                      // ),
                      // const SizedBox(width: 12),
                      // NavLink(
                      //   label: 'About',
                      //   isActive: currentPage == 'About',
                      //   onTap: () => onNavigate('About'),
                      // ),
                      const Spacer(),
                      SizedBox(
                        width: 260,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
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
                          if (value == 'settings') {
                            Navigator.pushReplacementNamed(
                              context,
                              '/settings',
                            );
                          }
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
                        child: const Row(
                          children: [
                            CircleAvatar(radius: 18, child: Icon(Icons.person)),
                            SizedBox(width: 8),
                            Text('Imthiaz'),
                            SizedBox(width: 4),
                            Icon(Icons.keyboard_arrow_down),
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
