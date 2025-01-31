import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

class NavigationTab {
  final PageRouteInfo route;

  final IconData icon;
  final String label;

  const NavigationTab({
    required this.route,
    required this.icon,
    required this.label,
  });
}

class NavScaffold extends StatelessWidget {
  const NavScaffold({
    super.key,
    required this.tabs,
  });

  final List<NavigationTab> tabs;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: tabs.map((tab) => tab.route).toList(),
        builder: (context, child) {
          final tabsRouter = context.tabsRouter;

          return Scaffold(
            body: SafeArea(child: child),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              items: tabs.map((tab) {
                final NavigationTab(:icon, :label) = tab;

                return BottomNavigationBarItem(
                  icon: Icon(icon),
                  label: label,
                );
              }).toList(),
              onTap: (tabIndex) {
                tabsRouter.setActiveIndex(tabIndex);
              },
            ),
          );
        });
  }
}
