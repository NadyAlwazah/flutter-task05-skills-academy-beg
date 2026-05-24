import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/data/models/course_model.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/course_card_item.dart';

class CoursesListView extends StatelessWidget {
  const CoursesListView({super.key, this.onCourseTap});

  final Function(CourseModel course)? onCourseTap;

  @override
  Widget build(BuildContext context) {
    final List<CourseModel> courses = [
      CourseModel(
        imagePath: AssetsData.crossPlatform,
        title: 'Mastering Flutter: Cross-Platform Excellence',
        instructor: 'Dr. Elena Rodriguez',
        rating: 4.9,
        price: 89.99,
        category: 'Mobile',
        categoryTextColor: Colors.white,
        categoryBackgroundColor: AppColors.primary,
      ),
      CourseModel(
        imagePath: AssetsData.aiNeuralPattern,
        title: 'Advanced AI: From Theory to Production',
        instructor: 'Prof. Julian Thorne',
        rating: 4.8,
        price: 124.00,
        category: 'AI & Data',
        categoryTextColor: Colors.black,
        categoryBackgroundColor: const Color(0xFFFADBB3),
      ),
      CourseModel(
        imagePath: AssetsData.uiuxDesignCourse,
        title: 'UI/UX Strategy for Scalable Products',
        instructor: 'Sarah Jenkins',
        rating: 5.0,
        price: 74.50,
        category: 'Design',
        categoryTextColor: Colors.black,
        categoryBackgroundColor: AppColors.second,
      ),
      CourseModel(
        imagePath: AssetsData.fullstackWeb,
        title: 'Full-Stack Architecture with React',
        instructor: 'Marcus Vane',
        rating: 4.7,
        price: 99.00,
        category: 'Web Dev',
        categoryTextColor: Colors.white,
        categoryBackgroundColor: AppColors.primary,
      ),
      CourseModel(
        imagePath: AssetsData.dataScience,
        title: 'Data Visualization for Decision Makers',
        instructor: 'Dr. Li Wei',
        rating: 4.9,
        price: 110.00,
        category: 'Data Science',
        categoryTextColor: Colors.black,
        categoryBackgroundColor: const Color(0xFFFADBB3),
      ),
      CourseModel(
        imagePath: AssetsData.brandingMasterclass,
        title: 'Visual Identity & Branding Masterclass',
        instructor: 'Oiiver Smith',
        rating: 4.6,
        price: 65.00,
        category: 'Design',
        categoryTextColor: Colors.black,
        categoryBackgroundColor: AppColors.second,
      ),
    ];

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return CourseCardItem(
          imagePath: course.imagePath,
          title: course.title,
          instructor: course.instructor,
          rating: course.rating,
          price: course.price,
          category: course.category,
          categoryTextColor: course.categoryTextColor,
          categoryBackgroundColor: course.categoryBackgroundColor,
          onTap: () => onCourseTap?.call(course),
        );
      },
    );
  }
}
