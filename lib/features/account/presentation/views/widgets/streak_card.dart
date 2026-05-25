import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/streak_badges_stack.dart';

class StreakCard extends StatelessWidget {
  const StreakCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'STREAK',
            style: Styles.textStyle22W300.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 6),

          Text(
            '14 Days of Learning!',
            style: Styles.textStyle29Bold.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),

          const Text(
            "You're in the top 5% of learners this month. Keep up the momentum to unlock the 'Mastery' badge.",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          const SizedBox(height: 16),

          const StreakBadgesStack(),
        ],
      ),
    );
  }
}
