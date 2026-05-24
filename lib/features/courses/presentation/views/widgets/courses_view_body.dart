import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/app/routes.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/data/models/course_model.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_filter_dropdown.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_list_view.dart';
import 'package:go_router/go_router.dart';

class CoursesViewBody extends StatefulWidget {
  const CoursesViewBody({super.key, this.onCourseTap});
  final Function(CourseModel course)? onCourseTap;
  @override
  State<CoursesViewBody> createState() => _CoursesViewBodyState();
}

class _CoursesViewBodyState extends State<CoursesViewBody> {
  String selectedItem = 'All Courses';

  void _handleDropdownChange(String? value) {
    if (value == null) return;

    setState(() => selectedItem = value);

    if (value == 'IT Course') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          content: const Text(
            'Welcome to IT Academy!',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    if (value == 'Languages Course') {
      GoRouter.of(context).push(AppRouter.kLanguagesSpecialOfferScreen);
      selectedItem = 'All Courses';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "EXPLORE CATEGORIES",
              style: TextStyle(letterSpacing: 2),
            ),
            const SizedBox(height: 5),

            CoursesFilterDropdown(
              selectedItem: selectedItem,
              onChanged: _handleDropdownChange,
            ),

            CoursesListView(onCourseTap: widget.onCourseTap),
          ],
        ),
      ),
    );
  }
}
