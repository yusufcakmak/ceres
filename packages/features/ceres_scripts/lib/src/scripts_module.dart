import 'package:flutter/material.dart';
import 'package:ceres_core/ceres_core.dart';

class ScriptsModule extends FeatureModule {
  @override
  String get name => 'Scripts';
  
  @override
  String get description => 'Custom script runner';
  
  @override
  IconData get icon => Icons.code;
  
  @override
  Map<String, WidgetBuilder> get routes => {
        '/scripts': (context) => Scaffold(
              appBar: AppBar(title: const Text('Scripts')),
              body: const Center(child: Text('Custom Script Runner')),
            ),
      };

  @override
  List<NavigationItem> get navigationItems => [
        const NavigationItem(
          title: 'Scripts',
          icon: Icons.code,
          route: '/scripts',
        ),
      ];
}