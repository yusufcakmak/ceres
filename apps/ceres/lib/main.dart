import 'package:flutter/material.dart';
import 'package:ceres_ui/ceres_ui.dart';
import 'registry.dart';

void main() {
  runApp(const CeresApp());
}

class CeresApp extends StatelessWidget {
  const CeresApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ceres Desktop',
      theme: CeresTheme.light(),
      darkTheme: CeresTheme.dark(),
      home: const CeresHome(),
      routes: FeatureRegistry.getRoutes(),
    );
  }
}

class CeresHome extends StatefulWidget {
  const CeresHome({super.key});

  @override
  State<CeresHome> createState() => _CeresHomeState();
}

class _CeresHomeState extends State<CeresHome> {
  int _selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    final navigationItems = FeatureRegistry.getNavigationItems();
    
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
              Navigator.pushNamed(context, navigationItems[index].route);
            },
            labelType: NavigationRailLabelType.selected,
            destinations: navigationItems.map((item) {
              return NavigationRailDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              );
            }).toList(),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(
              child: Text('Ceres Desktop - ${navigationItems[_selectedIndex].title}'),
            ),
          ),
        ],
      ),
    );
  }
}