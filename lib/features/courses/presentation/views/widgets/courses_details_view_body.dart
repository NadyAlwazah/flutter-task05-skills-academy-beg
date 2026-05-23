import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/custom_button.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/about_course_section.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/course_features_section.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_details_header_stack.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/instructor_info_tile.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/what_you_will_learn_section.dart';

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
                const SizedBox(height: 20),
                const WhatYouWillLearnSection(),
                const SizedBox(height: 5),
                const CourseFeaturesSection(),
                const SizedBox(height: 10),
                CustomButton(text: "Enroll Now", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
