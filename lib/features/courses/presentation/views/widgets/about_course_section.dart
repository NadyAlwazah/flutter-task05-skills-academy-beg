import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class AboutCourseSection extends StatelessWidget {
  const AboutCourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("About this Course", style: Styles.sectionTitle),
        SizedBox(height: 8),
        Text(
          "Master Flutter and Dart from scratch. This comprehensive course covers reactive programming, advanced state management with Bloc, and professional UI animations. You will build three production‑grade apps, gaining the practical skills needed for a professional career in mobile and desktop development.",
          style: Styles.descriptionText,
        ),
      ],
    );
  }
}
