import 'package:flutter/material.dart';
import '../../../core/app_theme.dart';
import '../../../shared/widgets/prototype_components.dart';
import '../../../shared/widgets/prototype_scaffold.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return PrototypeScaffold(
      title: 'Ajustes',
      currentIndex: 2,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 26),
        children: const [
          _ProfileSummaryCard(),
          SizedBox(height: 30),
          PrototypeTextField(label: 'Nombre', value: 'Javier Pérez'),
          SizedBox(height: 16),
          PrototypeTextField(label: 'Email', value: 'javier@email.com'),
          SizedBox(height: 16),
          PrototypeTextField(label: 'Ubicación', value: 'Madrid, España'),
          SizedBox(height: 16),
          PrototypeTextField(
            label: 'Biografía',
            value: 'Viajando provincia a provincia',
            height: 78,
            maxLines: 2,
          ),
          SizedBox(height: 18),
          PrimaryPrototypeButton(label: 'Guardar cambios'),
        ],
      ),
    );
  }
}

class _ProfileSummaryCard extends StatelessWidget {
  const _ProfileSummaryCard();

  @override
  Widget build(BuildContext context) {
    return PrototypeCard(
      padding: const EdgeInsets.all(24),
      child: const Row(
        children: [
          ProfileAvatar(size: 72),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Javier Pérez',
                  style: TextStyle(
                    color: AppColors.ink,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    height: 1.28,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'javier@email.com',
                  style: TextStyle(color: AppColors.muted, fontSize: 14),
                ),
                SizedBox(height: 10),
                PrototypeChip.neutral(
                  label: 'Editar foto',
                  padding: EdgeInsets.symmetric(horizontal: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
