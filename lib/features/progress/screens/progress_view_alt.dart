import 'package:flutter/material.dart';
import '../../../shared/widgets/bottom_navigation.dart';

class ProgressViewAlt extends StatelessWidget {
  const ProgressViewAlt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alternative Progress View')),
      body: const Center(child: Text('ProgressViewAlt placeholder')),
      bottomNavigationBar: const BottomNavigationBarWidget(currentIndex: 1),
    );
  }
}
