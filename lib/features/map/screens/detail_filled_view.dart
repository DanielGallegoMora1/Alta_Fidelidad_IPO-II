import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';
import '../../../core/routes.dart';
import '../../../shared/widgets/prototype_components.dart';
import '../../../shared/widgets/prototype_scaffold.dart';

class DetailFilledView extends StatelessWidget {
  const DetailFilledView({super.key});

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
                  'Bilbao',
                  style: TextStyle(
                    color: AppColors.ink,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    height: 1.05,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'País Vasco · sin experiencias compartidas',
                  style: TextStyle(
                    color: AppColors.muted,
                    fontSize: 14,
                    height: 1.25,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const PrototypeChip.pending(
                      label: 'Pendiente',
                      padding: EdgeInsets.symmetric(horizontal: 24),
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
          PrototypeCard(
            radius: 22,
            padding: const EdgeInsets.all(24),
            shadows: kSoftShadow,
            child: const Text(
              'Todavía no hay recomendaciones. Sé la primera persona en compartir una visita.',
              style: TextStyle(
                color: AppColors.muted,
                fontSize: 14,
                height: 1.35,
              ),
            ),
          ),
          const SizedBox(height: 132),
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
