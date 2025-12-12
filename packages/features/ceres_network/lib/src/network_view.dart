import 'package:flutter/material.dart';

class NetworkView extends StatelessWidget {
  const NetworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Monitor'),
      ),
      body: const Center(
        child: Text('Network monitoring and API interceptor'),
      ),
    );
  }
}