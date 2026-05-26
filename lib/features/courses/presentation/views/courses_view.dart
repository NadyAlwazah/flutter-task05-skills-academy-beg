import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/app/routes.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/app_bar_action_avatar.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/app_bar_title.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/data/models/course_model.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_filter_dropdown.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/widgets/courses_view_body.dart';
import 'package:go_router/go_router.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({super.key, this.onCourseTap});
  final Function(CourseModel course)? onCourseTap;

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AppBar
          const Padding(
            padding: EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppBarTitle(),
                AppBarActionAvatar(
                  imagePath: AssetsData.profileUserSvg,
                  isSvg: true,
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          const Text("EXPLORE CATEGORIES", style: TextStyle(letterSpacing: 2)),
          const SizedBox(height: 5),

          CoursesFilterDropdown(
            selectedItem: selectedItem,
            onChanged: _handleDropdownChange,
          ),
          // Body
          Expanded(child: CoursesViewBody(onCourseTap: widget.onCourseTap)),
        ],
      ),
    );
  }
}
