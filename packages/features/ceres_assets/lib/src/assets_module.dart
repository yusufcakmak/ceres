import 'package:flutter/material.dart';
import 'package:ceres_core/ceres_core.dart';

class AssetsModule extends FeatureModule {
  @override
  String get name => 'Assets';
  
  @override
  String get description => 'Asset management';
  
  @override
  IconData get icon => Icons.folder;
  
  @override
  Map<String, WidgetBuilder> get routes => {
        '/assets': (context) => Scaffold(
              appBar: AppBar(title: const Text('Assets')),
              body: const Center(child: Text('Asset Manager')),
            ),
      };

  @override
  List<NavigationItem> get navigationItems => [
        const NavigationItem(
          title: 'Assets',
          icon: Icons.folder,
          route: '/assets',
        ),
      ];
}