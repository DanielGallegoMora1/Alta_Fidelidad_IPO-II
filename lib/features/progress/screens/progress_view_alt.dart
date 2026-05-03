import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';
import '../../../core/routes.dart';
import '../../../shared/widgets/prototype_components.dart';
import '../../../shared/widgets/prototype_scaffold.dart';

class ProgressViewAlt extends StatelessWidget {
  const ProgressViewAlt({super.key});

  @override
  Widget build(BuildContext context) {
    return PrototypeScaffold(
      title: 'Pendientes',
      currentIndex: 1,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 26),
        children: [
          const SectionTitle('Provincias por visitar'),
          const SizedBox(height: 14),
          _PendingTile(
            name: 'Bilbao',
            subtitle: 'País Vasco · recomendada por la comunidad',
            onTap: () => Navigator.pushNamed(context, Routes.detailFilledView),
          ),
          const SizedBox(height: 12),
          _PendingTile(
            name: 'Sevilla',
            subtitle: 'Andalucía · guarda ideas para tu próximo viaje',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          _PendingTile(
            name: 'Valencia',
            subtitle: 'Comunidad Valenciana · pendiente',
            onTap: () {},
          ),
          const SizedBox(height: 32),
          PrimaryPrototypeButton(
            label: 'Volver al progreso',
            onPressed: () =>
                Navigator.pushReplacementNamed(context, Routes.progressView),
          ),
        ],
      ),
    );
  }
}

class _PendingTile extends StatelessWidget {
  final String name;
  final String subtitle;
  final VoidCallback? onTap;

  const _PendingTile({required this.name, required this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        height: 70,
        padding: const EdgeInsets.fromLTRB(16, 13, 18, 13),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(18),
          boxShadow: kSoftShadow,
        ),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFE8EEE8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.flag_outlined,
                color: AppColors.muted,
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: AppColors.ink,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.muted,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const PrototypeChip.pending(
              label: 'Pendiente',
              padding: EdgeInsets.symmetric(horizontal: 12),
            ),
          ],
        ),
      ),
    );
  }
}
