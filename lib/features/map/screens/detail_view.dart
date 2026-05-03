import 'package:flutter/material.dart';
import '../../../core/routes.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Province Detail')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.experienceView);
          },
          child: const Text('Add Experience'),
        ),
      ),
    );
  }
}
