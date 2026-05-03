import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';
import '../../../core/routes.dart';
import '../../../shared/widgets/prototype_components.dart';
import '../../../shared/widgets/prototype_scaffold.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return PrototypeScaffold(
      title: 'Mapa de España',
      currentIndex: 0,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 26),
        children: [
          const Center(
            child: Text(
              'Toca una provincia para verla en detalle',
              style: TextStyle(
                color: AppColors.muted,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 14),
          const _SearchBarMock(),
          const SizedBox(height: 20),
          InkWell(
            borderRadius: BorderRadius.circular(24),
            onTap: () => Navigator.pushNamed(context, Routes.detailView),
            child: const _MapCard(),
          ),
          const SizedBox(height: 22),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrototypeChip(
                label: 'Visitado',
                padding: EdgeInsets.symmetric(horizontal: 28),
              ),
              SizedBox(width: 20),
              PrototypeChip.pending(
                label: 'Pendiente',
                padding: EdgeInsets.symmetric(horizontal: 28),
              ),
            ],
          ),
          const SizedBox(height: 22),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => Navigator.pushNamed(context, Routes.progressView),
            child: Container(
              height: 64,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  Text(
                    '6%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      height: 1.28,
                    ),
                  ),
                  SizedBox(width: 28),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'del mapa completado',
                        style: TextStyle(
                          color: AppColors.activeSurface,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Ver progreso',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchBarMock extends StatelessWidget {
  const _SearchBarMock();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12101F14),
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: AppColors.muted, size: 20),
          SizedBox(width: 12),
          Text(
            'Buscar provincia',
            style: TextStyle(color: AppColors.muted, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class _MapCard extends StatelessWidget {
  const _MapCard();

  @override
  Widget build(BuildContext context) {
    return PrototypeCard(
      radius: 24,
      padding: const EdgeInsets.fromLTRB(24, 18, 18, 28),
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: Text(
                  '50 provincias',
                  style: TextStyle(
                    color: AppColors.ink,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              PrototypeChip(label: '3 visitadas'),
            ],
          ),
          const SizedBox(height: 4),
          SizedBox(
            height: 280,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/spain_provinces.png',
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                const Positioned(left: 126, top: 73, child: _MapMarker()),
                const Positioned(left: 168, top: 142, child: _MapMarker()),
                const Positioned(
                  left: 148,
                  top: 164,
                  child: _MapMarker(color: AppColors.accent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MapMarker extends StatelessWidget {
  final Color color;

  const _MapMarker({this.color = AppColors.primaryLight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3),
      ),
    );
  }
}
