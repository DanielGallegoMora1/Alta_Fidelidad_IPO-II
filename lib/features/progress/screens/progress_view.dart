import 'package:flutter/material.dart';
import '../../../shared/widgets/bottom_navigation.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress View')),
      body: const Center(child: Text('ProgressView placeholder')),
      bottomNavigationBar: const BottomNavigationBarWidget(currentIndex: 1),
    );
  }
}
