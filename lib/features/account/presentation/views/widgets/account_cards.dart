import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/info_card.dart';

List<Widget> buildAccountCards({
  required BuildContext context,
  required Widget Function(IconData, Color, {Color iconColor}) buildIcon,
}) {
  return [
    InfoCard(
      titleBesideIcon: true,
      icon: buildIcon(Icons.workspace_premium_outlined, AppColors.second),
      title: 'Certificates',
      description:
          'View and download your earned professional credentials from completed courses and specialized paths.',
      actionLabel: 'Manage Certificates',
      actionIcon: Icons.arrow_forward,
      actionIconSize: 20,
      onActionTap: () {},
      backgroundDecoration: Icon(
        Icons.school_outlined,
        size: MediaQuery.of(context).size.width * .34,
      ),
    ),

    InfoCard(
      titleBesideIcon: false,
      icon: buildIcon(Icons.settings_outlined, AppColors.second),
      title: 'Settings',
      description: 'Privacy, security, and notification preferences.',
      actionLabel: 'Edit Profile',
      actionIcon: Icons.arrow_forward_ios_rounded,
      actionIconSize: 14.r,
      onActionTap: () {},
    ),

    InfoCard(
      titleBesideIcon: false,
      icon: buildIcon(
        Icons.help_outline,
        const Color(0xFFFFE0B2),
        iconColor: Colors.brown,
      ),
      title: 'Help',
      description: 'Browse FAQs or contact our dedicated academic support.',
      actionLabel: 'Visit Support',
      actionIcon: Icons.arrow_forward_ios_rounded,
      actionIconSize: 14.r,
      onActionTap: () {},
    ),
  ];
}
