import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/widgets/my_learning_info_card.dart';

class MyLearningInfoSection extends StatelessWidget {
  const MyLearningInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyLearningInfoCard(
          icon: Icons.menu_book_outlined,
          title: 'Active Courses',
          value: '4',
          backgroundColor: AppColors.primary,
          textColor: Colors.white,
        ),
        SizedBox(height: 16),
        MyLearningInfoCard(
          icon: Icons.emoji_events_outlined,
          title: 'Completed',
          value: '12',
        ),
        SizedBox(height: 16),
        MyLearningInfoCard(
          icon: Icons.access_time,
          title: 'Hours Studied',
          value: '42h',
        ),
      ],
    );
  }
}
