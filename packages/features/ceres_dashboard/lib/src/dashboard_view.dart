import 'package:flutter/material.dart';
import 'package:ceres_ui/ceres_ui.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            CeresCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.network_check, size: 48, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 8),
                  const Text('Network Status', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Text('Active', style: TextStyle(color: Colors.green)),
                ],
              ),
            ),
            CeresCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.folder, size: 48, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 8),
                  const Text('Assets', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Text('12 Files'),
                ],
              ),
            ),
            CeresCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow, size: 48, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 8),
                  const Text('Runner', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Text('Ready'),
                ],
              ),
            ),
            CeresCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.code, size: 48, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(height: 8),
                  const Text('Scripts', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Text('3 Scripts'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}