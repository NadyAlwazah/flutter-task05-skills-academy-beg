import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/app_bar_title_courses_details_view.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_details_app_bar_actions.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_details_view_body.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({
    super.key,
    required this.title,
    required this.instructor,
    this.onBack,
  });
  final String title;
  final String instructor;
  final VoidCallback? onBack;
  @override
  Widget build(BuildContext context) {
    return Column(
      // AppBar
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 35, left: 16, right: 16),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_outlined,
                  color: AppColors.primary,
                ),
                onPressed: onBack,
              ),
              const AppBarTitleCoursesDetailsView(),
              const Spacer(),
              const CoursesDetailsAppBarActions(),
            ],
          ),
        ),
        // Body
        Expanded(
          child: CoursesDetailsViewBody(title: title, instructor: instructor),
        ),
      ],
    );
  }
}
