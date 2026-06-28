import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(size: 26.r, Icons.school_outlined, color: AppColors.primary),
        const SizedBox(width: 7),
        Text("Skills Academy", style: Styles.appBarTitle),
      ],
    );
  }
}
