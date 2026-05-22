import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class AppBarTitleCoursesView extends StatelessWidget {
  const AppBarTitleCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.arrow_back_outlined, color: AppColors.primary),
        const SizedBox(width: 10),
        Text(
          "Skills Academy",
          style: Styles.appBarTitle.copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
