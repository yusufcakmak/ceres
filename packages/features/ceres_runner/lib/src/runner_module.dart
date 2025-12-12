import 'package:flutter/material.dart';
import 'package:ceres_core/ceres_core.dart';

class RunnerModule extends FeatureModule {
  @override
  String get name => 'Runner';
  
  @override
  String get description => 'Build runner trigger';
  
  @override
  IconData get icon => Icons.play_arrow;
  
  @override
  Map<String, WidgetBuilder> get routes => {
        '/runner': (context) => Scaffold(
              appBar: AppBar(title: const Text('Build Runner')),
              body: const Center(child: Text('Build Runner Trigger')),
            ),
      };

  @override
  List<NavigationItem> get navigationItems => [
        const NavigationItem(
          title: 'Runner',
          icon: Icons.play_arrow,
          route: '/runner',
        ),
      ];
}