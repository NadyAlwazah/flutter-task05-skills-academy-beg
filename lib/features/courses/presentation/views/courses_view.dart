import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/app_bar_title.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/data/models/course_model.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_app_bar_actions.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_view_body.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({super.key, this.onCourseTap});
  final Function(CourseModel course)? onCourseTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // AppBar
        const Padding(
          padding: EdgeInsets.only(top: 35, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [AppBarTitle(), CoursesAppBarActions()],
          ),
        ),

        const SizedBox(height: 8),

        // Body
        Expanded(child: CoursesViewBody(onCourseTap: onCourseTap)),
      ],
    );
  }
}
