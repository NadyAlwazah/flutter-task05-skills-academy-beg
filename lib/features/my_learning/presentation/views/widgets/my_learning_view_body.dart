import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/widgets/my_learning_courses_section.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/widgets/my_learning_header.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/widgets/my_learning_info_section.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/widgets/my_learning_path_header.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/widgets/my_learning_recommendation_card.dart';

class MyLearningViewBody extends StatelessWidget {
  const MyLearningViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const MyLearningHeader(),
            const SizedBox(height: 24),
            const MyLearningInfoSection(),
            const SizedBox(height: 8),
            MyLearningPathHeader(onPressed: () {}),
            const MyLearningCoursesSection(),
            const SizedBox(height: 16),
            MyLearningRecommendationCard(onPressed: () {}),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
