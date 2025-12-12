import 'package:flutter/material.dart';

abstract class PluginInterface {
  String get id;
  String get name;
  String get description;
  String get version;
  IconData get icon;
  Widget buildView(BuildContext context);
  Map<String, dynamic> getState();
  void initialize();
  void dispose();
}