import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';
import '../../../core/routes.dart';
import '../../../shared/widgets/prototype_components.dart';
import '../../../shared/widgets/prototype_scaffold.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return PrototypeScaffold(
      title: 'Progreso',
      currentIndex: 1,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 26),
        children: [
          const _ProgressHeroCard(),
          const SizedBox(height: 26),
          const SectionTitle('Provincias visitadas'),
          const SizedBox(height: 14),
          ProvinceListTilePrototype(
            name: 'Ciudad Real',
            subtitle: 'Tablas de Daimiel guardado',
            experienceLabel: '1 exp',
            onTap: () => Navigator.pushNamed(context, Routes.detailView),
          ),
          const SizedBox(height: 12),
          ProvinceListTilePrototype(
            name: 'Bilbao',
            subtitle: 'Sin experiencias todavía',
            experienceLabel: '0 exp',
            onTap: () => Navigator.pushNamed(context, Routes.detailFilledView),
          ),
          const SizedBox(height: 12),
          ProvinceListTilePrototype(
            name: 'Madrid',
            subtitle: 'Museos y centro histórico',
            experienceLabel: '1 exp',
            onTap: () => Navigator.pushNamed(context, Routes.detailFilledView),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: OutlinedPrototypeButton(
                  label: 'Ver pendientes',
                  onPressed: () =>
                      Navigator.pushNamed(context, Routes.progressViewAlt),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: PrimaryPrototypeButton(
                  label: 'Explorar mapa',
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, Routes.mapView),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProgressHeroCard extends StatelessWidget {
  const _ProgressHeroCard();

  @override
  Widget build(BuildContext context) {
    return PrototypeCard(
      color: AppColors.primary,
      radius: 26,
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 18),
      shadows: const [
        BoxShadow(
          color: Color(0x24101F14),
          blurRadius: 16,
          offset: Offset(0, 8),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'TOTAL VISITADAS',
            style: TextStyle(
              color: AppColors.activeSurface,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  height: 1.05,
                ),
              ),
              SizedBox(width: 28),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  '/ 50',
                  style: TextStyle(
                    color: AppColors.activeSurface,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: const LinearProgressIndicator(
              value: 0.06,
              minHeight: 14,
              color: AppColors.accent,
              backgroundColor: Color(0xFFCFE7D8),
            ),
          ),
          const SizedBox(height: 8),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              '6% completado',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
