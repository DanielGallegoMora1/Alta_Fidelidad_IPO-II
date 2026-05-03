import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
import 'bottom_navigation.dart';
import 'prototype_components.dart';

class PrototypeScaffold extends StatelessWidget {
  final String title;
  final int currentIndex;
  final Widget child;
  final bool showBottomNavigation;

  const PrototypeScaffold({
    super.key,
    required this.title,
    required this.currentIndex,
    required this.child,
    this.showBottomNavigation = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64),
        child: SafeArea(
          bottom: false,
          child: Container(
            height: 64,
            decoration: BoxDecoration(
              color: AppColors.surface,
              border: Border.all(color: AppColors.line),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.ink,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    height: 1.3,
                  ),
                ),
                const Positioned(right: 16, child: ProfileAvatar()),
              ],
            ),
          ),
        ),
      ),
      body: child,
      bottomNavigationBar: showBottomNavigation
          ? BottomNavigationBarWidget(currentIndex: currentIndex)
          : null,
    );
  }
}
