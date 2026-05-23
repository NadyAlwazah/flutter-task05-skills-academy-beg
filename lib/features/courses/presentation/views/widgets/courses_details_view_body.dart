import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/about_course_section.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_details_header_stack.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/instructor_info_tile.dart';

class CoursesDetailsViewBody extends StatelessWidget {
  const CoursesDetailsViewBody({
    super.key,
    required this.title,
    required this.instructor,
  });
  final String title;
  final String instructor;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CoursesDetailsHeaderStack(title: title),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                InstructorInfoTile(instructorName: instructor),
                const SizedBox(height: 16),
                const AboutCourseSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
