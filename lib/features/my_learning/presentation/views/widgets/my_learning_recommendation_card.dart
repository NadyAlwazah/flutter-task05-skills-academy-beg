import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class MyLearningRecommendationCard extends StatelessWidget {
  const MyLearningRecommendationCard({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFE8E6FF),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'TOP PICK FOR YOU',
            style: Styles.textStyle16W600.copyWith(
              letterSpacing: 1,
              color: const Color(0xFF6A6984),
            ),
          ),
          const SizedBox(height: 8),

          const Text('Machine Learning A-Z', style: Styles.textStyle30W700),
          const SizedBox(height: 8),

          const Text(
            'Based on your interest in Data Science, '
            'this course is the perfect next step for your career path.',
            style: TextStyle(color: Color(0xFF6A6984), fontSize: 15),
          ),
          const SizedBox(height: 16),

          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 32,
                ),
              ),
              onPressed: onPressed,
              child: const Text('Enroll Now', style: Styles.textStyle16W600),
            ),
          ),
        ],
      ),
    );
  }
}
