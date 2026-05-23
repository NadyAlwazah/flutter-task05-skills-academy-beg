import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/app_bar_title_courses_details_view.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_details_app_bar_actions.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_details_view_body.dart';
import 'package:go_router/go_router.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({
    super.key,
    required this.title,
    required this.instructor,
  });
  final String title;
  final String instructor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined, color: AppColors.primary),
          onPressed: () {
            context.pop();
          },
        ),
        title: const AppBarTitleCoursesDetailsView(),
        actions: const [CoursesDetailsAppBarActions()],
      ),
      body: CoursesDetailsViewBody(title: title, instructor: instructor),
    );
  }
}
