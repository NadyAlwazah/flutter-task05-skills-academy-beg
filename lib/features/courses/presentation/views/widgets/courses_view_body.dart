import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/data/models/course_model.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_list_view.dart';

class CoursesViewBody extends StatelessWidget {
  const CoursesViewBody({super.key, this.onCourseTap});
  final Function(CourseModel course)? onCourseTap;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [CoursesListView(onCourseTap: onCourseTap)]),
    );
  }
}
