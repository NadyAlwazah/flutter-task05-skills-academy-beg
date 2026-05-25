import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class InfoCard extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;
  final String actionLabel;
  final IconData actionIcon;
  final double actionIconSize;
  final VoidCallback onActionTap;
  final Widget? backgroundDecoration;
  final bool titleBesideIcon;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.actionLabel,
    required this.onActionTap,
    this.backgroundDecoration,
    required this.actionIcon,
    required this.actionIconSize,
    required this.titleBesideIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // الأيقونة
          if (backgroundDecoration != null)
            Positioned(
              right: -25,
              bottom: -20,
              child: Opacity(opacity: 0.08, child: backgroundDecoration!),
            ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleBesideIcon
                  ? Row(
                      children: [
                        icon,
                        const SizedBox(width: 10),
                        Text(title, style: Styles.sectionTitle),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        icon,
                        const SizedBox(height: 6),
                        Text(title, style: Styles.sectionTitle),
                      ],
                    ),
              const SizedBox(height: 8),
              Text(
                description,
                style: Styles.descriptionText.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: onActionTap,
                child: Row(
                  children: [
                    Text(
                      actionLabel,
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      actionIcon,
                      size: actionIconSize,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ],
      ),
    );
  }
}
