import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/widgets/my_learning_course_card.dart';

class MyLearningCoursesSection extends StatelessWidget {
  const MyLearningCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyLearningCourseCard(
          imagePath: AssetsData.myLearningReactCourseImage,
          category: 'Advanced Development',
          title: 'Mastering React Server Components',
          description:
              'Deep dive into Next.js 14 and modern architecture patterns for scalable web apps.',
          progress: 78,
          buttonText: 'Continue Lesson',
          status: 'In Progress',
          progressLabel: "Progress",
        ),

        MyLearningCourseCard(
          imagePath: AssetsData.myLearningdataScience,
          title: 'Data Science Essentials',
          description: 'Python for data analysis and visualization.',
          progress: 45,
          progressLabel: "45% Complete",
          showProgressValue: false,
        ),

        MyLearningCourseCard(
          imagePath: AssetsData.myLearningUiUxDesignCourse,
          title: 'UI/UX Foundations',
          progress: 20,
          showProgressValue: false,
        ),

        MyLearningCourseCard(
          imagePath: AssetsData.myLearningAgileLeadershipCourse,
          title: 'AgileLeadership',
          progress: 85,
          showProgressValue: false,
        ),
      ],
    );
  }
}
