import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class MyLearningPathHeader extends StatelessWidget {
  const MyLearningPathHeader({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('My Learning Path', style: Styles.textStyle22W500),
        TextButton(
          onPressed: onPressed,
          child: const Row(
            children: [
              Text(
                'View all',
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 2),
              Icon(Icons.arrow_forward, color: AppColors.primary, size: 18),
            ],
          ),
        ),
      ],
    );
  }
}
