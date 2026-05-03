import 'package:flutter/material.dart';
import '../../core/app_theme.dart';

const List<BoxShadow> kSoftShadow = [
  BoxShadow(color: Color(0x17101F14), blurRadius: 10, offset: Offset(0, 5)),
];

const List<BoxShadow> kCardShadow = [
  BoxShadow(color: Color(0x19101F14), blurRadius: 16, offset: Offset(0, 8)),
];

class ProfileAvatar extends StatelessWidget {
  final double size;
  final String initials;
  final Color backgroundColor;
  final Color foregroundColor;

  const ProfileAvatar({
    super.key,
    this.size = 36,
    this.initials = 'JP',
    this.backgroundColor = AppColors.activeSurface,
    this.foregroundColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFC8E5D2)),
      ),
      child: Text(
        initials,
        style: TextStyle(
          color: foregroundColor,
          fontSize: size >= 60 ? 22 : 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class PrototypeCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color color;
  final double radius;
  final List<BoxShadow> shadows;

  const PrototypeCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(24),
    this.color = AppColors.surface,
    this.radius = 26,
    this.shadows = kCardShadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: shadows,
      ),
      child: child,
    );
  }
}

class PrototypeChip extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;
  final double height;
  final EdgeInsetsGeometry padding;

  const PrototypeChip({
    super.key,
    required this.label,
    this.backgroundColor = AppColors.activeSurface,
    this.foregroundColor = AppColors.primary,
    this.height = 30,
    this.padding = const EdgeInsets.symmetric(horizontal: 18),
  });

  const PrototypeChip.neutral({
    super.key,
    required this.label,
    this.backgroundColor = AppColors.softSurface,
    this.foregroundColor = AppColors.primary,
    this.height = 30,
    this.padding = const EdgeInsets.symmetric(horizontal: 18),
  });

  const PrototypeChip.pending({
    super.key,
    required this.label,
    this.backgroundColor = const Color(0xFFE8EEE8),
    this.foregroundColor = AppColors.muted,
    this.height = 30,
    this.padding = const EdgeInsets.symmetric(horizontal: 18),
  });

  const PrototypeChip.experience({
    super.key,
    required this.label,
    this.backgroundColor = AppColors.accentSurface,
    this.foregroundColor = AppColors.ink,
    this.height = 30,
    this.padding = const EdgeInsets.symmetric(horizontal: 14),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: foregroundColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 1.25,
        ),
      ),
    );
  }
}

class PrimaryPrototypeButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;

  const PrimaryPrototypeButton({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      elevation: 5,
      shadowColor: const Color(0x29101F14),
      backgroundColor: AppColors.primaryLight,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    );

    return SizedBox(
      height: 52,
      width: double.infinity,
      child: icon == null
          ? ElevatedButton(
              onPressed: onPressed ?? () {},
              style: style,
              child: Text(label),
            )
          : ElevatedButton.icon(
              onPressed: onPressed ?? () {},
              icon: Icon(icon, size: 24),
              label: Text(label),
              style: style,
            ),
    );
  }
}

class OutlinedPrototypeButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const OutlinedPrototypeButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: OutlinedButton(
        onPressed: onPressed ?? () {},
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primaryLight, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
        child: Text(label),
      ),
    );
  }
}

class PrototypeTextField extends StatelessWidget {
  final String label;
  final String value;
  final double height;
  final int maxLines;

  const PrototypeTextField({
    super.key,
    required this.label,
    required this.value,
    this.height = 54,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: AppColors.muted,
            fontSize: 12,
            fontWeight: FontWeight.w700,
            height: 1.25,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: height,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.line, width: 1.2),
          ),
          child: Align(
            alignment: maxLines == 1 ? Alignment.centerLeft : Alignment.topLeft,
            child: Text(
              value,
              style: const TextStyle(
                color: AppColors.muted,
                fontSize: 14,
                height: 1.3,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProvinceListTilePrototype extends StatelessWidget {
  final String name;
  final String subtitle;
  final String experienceLabel;
  final VoidCallback? onTap;

  const ProvinceListTilePrototype({
    super.key,
    required this.name,
    required this.subtitle,
    required this.experienceLabel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
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
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.check, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.ink,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 1.25,
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
                      height: 1.25,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            PrototypeChip.experience(label: experienceLabel),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;

  const SectionTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.ink,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.28,
      ),
    );
  }
}
