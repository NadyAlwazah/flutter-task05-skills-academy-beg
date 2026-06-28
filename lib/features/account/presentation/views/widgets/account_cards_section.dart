import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'account_cards.dart';

class AccountCardsSection extends StatelessWidget {
  const AccountCardsSection({super.key});

  Widget _buildIcon(
    IconData iconData,
    Color bgColor, {
    Color iconColor = AppColors.primary,
  }) {
    return Container(
      height: 36.w,
      width: 36.w,
      decoration: BoxDecoration(
        color: bgColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(iconData, color: iconColor, size: 20.r),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cards = buildAccountCards(context: context, buildIcon: _buildIcon);

    return Column(
      children: cards
          .map(
            (card) => Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: card,
            ),
          )
          .toList(),
    );
  }
}
