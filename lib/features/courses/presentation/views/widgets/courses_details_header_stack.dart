import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class CoursesDetailsHeaderStack extends StatelessWidget {
  const CoursesDetailsHeaderStack({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AssetsData.stackBackgroundCourses),

        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // Bestseller
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: const Text(
                    "Bestseller",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                const SizedBox(height: 7),

                // Title
                Text(
                  title,
                  style: Styles.textStyle24Bold,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                // Description
                Text(
                  "Build beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.",
                  style: Styles.textStyle15W500,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
