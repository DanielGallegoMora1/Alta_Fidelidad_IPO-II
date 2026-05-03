import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';
import '../../../core/routes.dart';
import '../../../shared/widgets/prototype_components.dart';
import '../../../shared/widgets/prototype_scaffold.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return PrototypeScaffold(
      title: 'Añadir experiencia',
      currentIndex: 0,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 26),
        children: [
          const Text(
            'Ciudad Real',
            style: TextStyle(
              color: AppColors.ink,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 24),
          const PrototypeTextField(
            label: 'Descripción',
            value: 'Escribe aquí tu experiencia',
            height: 112,
            maxLines: 4,
          ),
          const SizedBox(height: 10),
          const PrototypeTextField(
            label: 'Lugares visitados',
            value: 'Ej. Tablas de Daimiel, Almagro...',
            height: 88,
            maxLines: 3,
          ),
          const SizedBox(height: 10),
          const PrototypeTextField(
            label: 'Consejos',
            value: 'Ej. Compra entradas con antelación',
            height: 88,
            maxLines: 3,
          ),
          const SizedBox(height: 10),
          Container(
            height: 74,
            padding: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(
              color: AppColors.accentSurface,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppColors.accent),
            ),
            child: const Row(
              children: [
                Icon(Icons.add, color: AppColors.ink, size: 28),
                SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Añadir foto opcional',
                      style: TextStyle(
                        color: AppColors.ink,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'JPG o PNG',
                      style: TextStyle(color: AppColors.muted, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 26),
          PrimaryPrototypeButton(
            label: 'Guardar experiencia',
            onPressed: () =>
                Navigator.pushReplacementNamed(context, Routes.detailView),
          ),
        ],
      ),
    );
  }
}
