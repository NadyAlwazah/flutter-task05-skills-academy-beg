import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class MyLearningHeader extends StatelessWidget {
  const MyLearningHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome back, Alex', style: Styles.textStyle30W700),
        const SizedBox(height: 4),
        Text(
          "You've completed 65% of your weekly learning goal.",
          style: Styles.descriptionText.copyWith(fontSize: 16.sp),
        ),
      ],
    );
  }
}
