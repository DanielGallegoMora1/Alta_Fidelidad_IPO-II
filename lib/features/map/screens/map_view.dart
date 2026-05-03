import 'package:flutter/material.dart';
import '../../../shared/widgets/bottom_navigation.dart';
import '../../../core/routes.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Map View')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.detailView);
          },
          child: const Text('Open Province Detail'),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(currentIndex: 0),
    );
  }
}
