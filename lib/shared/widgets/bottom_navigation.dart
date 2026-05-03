import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
import '../../core/routes.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentIndex;

  const BottomNavigationBarWidget({super.key, required this.currentIndex});

  void _onItemTapped(BuildContext context, int index) {
    final route = index == 0
        ? Routes.mapView
        : index == 1
        ? Routes.progressView
        : Routes.settingsView;

    if (route != ModalRoute.of(context)?.settings.name) {
      Navigator.pushReplacementNamed(context, route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 80,
        padding: const EdgeInsets.only(top: 8),
        decoration: const BoxDecoration(
          color: AppColors.surface,
          boxShadow: [
            BoxShadow(
              color: Color(0x14101F14),
              blurRadius: 7,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: Row(
          children: [
            _Destination(
              icon: Icons.map_outlined,
              label: 'Mapa',
              selected: currentIndex == 0,
              onTap: () => _onItemTapped(context, 0),
            ),
            _Destination(
              icon: Icons.bar_chart_rounded,
              label: 'Progreso',
              selected: currentIndex == 1,
              onTap: () => _onItemTapped(context, 1),
            ),
            _Destination(
              icon: Icons.settings,
              label: 'Ajustes',
              selected: currentIndex == 2,
              onTap: () => _onItemTapped(context, 2),
            ),
          ],
        ),
      ),
    );
  }
}

class _Destination extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _Destination({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = selected ? AppColors.primary : AppColors.muted;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 58,
              height: 32,
              decoration: BoxDecoration(
                color: selected ? AppColors.activeSurface : AppColors.surface,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Icon(icon, size: 22, color: color),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 12,
                fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                height: 1.25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
