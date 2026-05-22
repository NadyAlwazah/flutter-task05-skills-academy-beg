import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/app_bar_title.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_app_bar_actions.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_view_body.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const AppBarTitle(),
        actions: const [CoursesAppBarActions()],
      ),
      body: const CoursesViewBody(),
    );
  }
}
