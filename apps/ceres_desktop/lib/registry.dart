import 'package:flutter/material.dart';
import 'package:ceres_core/ceres_core.dart';
import 'package:ceres_dashboard/ceres_dashboard.dart';
import 'package:ceres_network/ceres_network.dart';
import 'package:ceres_assets/ceres_assets.dart';
import 'package:ceres_runner/ceres_runner.dart';
import 'package:ceres_scripts/ceres_scripts.dart';

class FeatureRegistry {
  static final List<FeatureModule> _modules = [
    DashboardModule(),
    NetworkModule(),
    AssetsModule(),
    RunnerModule(),
    ScriptsModule(),
  ];

  static List<FeatureModule> get modules => _modules;

  static Map<String, WidgetBuilder> getRoutes() {
    final routes = <String, WidgetBuilder>{};
    for (final module in _modules) {
      routes.addAll(module.routes);
    }
    return routes;
  }

  static List<NavigationItem> getNavigationItems() {
    final items = <NavigationItem>[];
    for (final module in _modules) {
      items.addAll(module.navigationItems);
    }
    return items;
  }
}