import 'package:flutter/material.dart';
import 'package:ceres_core/ceres_core.dart';
import 'network_view.dart';

class NetworkModule extends FeatureModule {
  @override
  String get name => 'Network';
  
  @override
  String get description => 'API and network monitoring';
  
  @override
  IconData get icon => Icons.network_check;
  
  @override
  Map<String, WidgetBuilder> get routes => {
        '/network': (context) => const NetworkView(),
      };

  @override
  List<NavigationItem> get navigationItems => [
        const NavigationItem(
          title: 'Network',
          icon: Icons.network_check,
          route: '/network',
        ),
      ];
}