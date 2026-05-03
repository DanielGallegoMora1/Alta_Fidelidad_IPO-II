import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';
import '../../../core/routes.dart';
import '../../../shared/widgets/prototype_components.dart';
import '../../../shared/widgets/prototype_scaffold.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return PrototypeScaffold(
      title: 'Detalle provincia',
      currentIndex: 0,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 26),
        children: [
          PrototypeCard(
            padding: const EdgeInsets.fromLTRB(24, 22, 24, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ciudad Real',
                  style: TextStyle(
                    color: AppColors.ink,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    height: 1.05,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Castilla-La Mancha · 1 experiencia compartida',
                  style: TextStyle(
                    color: AppColors.muted,
                    fontSize: 14,
                    height: 1.25,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const PrototypeChip(
                      label: 'Visitada',
                      padding: EdgeInsets.symmetric(horizontal: 26),
                    ),
                    const SizedBox(width: 18),
                    Expanded(
                      child: OutlinedPrototypeButton(
                        label: 'Marcar visita',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 26),
          const SectionTitle('Experiencias de la comunidad'),
          const SizedBox(height: 14),
          const _ExperienceCard(),
          const SizedBox(height: 98),
          PrimaryPrototypeButton(
            label: 'Añadir experiencia',
            icon: Icons.add,
            onPressed: () =>
                Navigator.pushNamed(context, Routes.experienceView),
          ),
        ],
      ),
    );
  }
}

class _ExperienceCard extends StatelessWidget {
  const _ExperienceCard();

  @override
  Widget build(BuildContext context) {
    return PrototypeCard(
      radius: 22,
      padding: const EdgeInsets.all(20),
      shadows: kSoftShadow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              ProfileAvatar(
                size: 40,
                initials: 'JA',
                backgroundColor: AppColors.accentSurface,
                foregroundColor: AppColors.ink,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Javier',
                    style: TextStyle(
                      color: AppColors.ink,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Hace 2 días',
                    style: TextStyle(color: AppColors.muted, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Muy bonito. Las Tablas de Daimiel merecen una mañana completa y buen repelente.',
            style: TextStyle(color: AppColors.ink, fontSize: 14, height: 1.28),
          ),
          const SizedBox(height: 14),
          const PrototypeChip.neutral(label: 'Tablas de Daimiel'),
        ],
      ),
    );
  }
}
