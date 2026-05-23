import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_details_header_stack.dart';

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
      child: Column(children: [CoursesDetailsHeaderStack(title: title)]),
    );
  }
}
