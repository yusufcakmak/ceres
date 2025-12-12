import 'package:flutter/material.dart';
import 'navigation_item.dart';

abstract class FeatureModule {
  String get name;
  String get description;
  IconData get icon;
  Map<String, WidgetBuilder> get routes;
  List<NavigationItem> get navigationItems;
}