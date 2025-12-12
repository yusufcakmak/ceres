import 'package:flutter/material.dart';
import 'package:ceres_core/ceres_core.dart';
import 'dashboard_view.dart';

class DashboardModule extends FeatureModule {
  @override
  String get name => 'Dashboard';

  @override
  String get description => 'General overview and summary';

  @override
  IconData get icon => Icons.dashboard;

  @override
  Map<String, WidgetBuilder> get routes => {
        '/dashboard': (context) => const DashboardView(),
      };

  @override
  List<NavigationItem> get navigationItems => [
        const NavigationItem(
          title: 'Dashboard',
          icon: Icons.dashboard,
          route: '/dashboard',
        ),
      ];
}