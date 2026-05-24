import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/account_view.dart';
import 'package:flutter_task05_skills_academy_beg/features/bottom_bar_layout/presentation/views/widgets/bottom_nav_item.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/course_details_view.dart';
import 'package:flutter_task05_skills_academy_beg/features/courses/presentation/views/courses_view.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/my_learning_view.dart';

class BottomBarLayout extends StatefulWidget {
  const BottomBarLayout({super.key});

  @override
  State<BottomBarLayout> createState() => _BottomBarLayoutState();
}

class _BottomBarLayoutState extends State<BottomBarLayout> {
  int currentIndex = 0;

  Widget? selectedCoursePage;
  List<Widget> _buildScreens() {
    return [
      CoursesView(
        onCourseTap: (course) {
          setState(() {
            selectedCoursePage = CourseDetailsView(
              title: course.title,
              instructor: course.instructor,
              onBack: () {
                setState(() {
                  selectedCoursePage = null;
                });
              },
            );
          });
        },
      ),

      const MyLearningView(),
      const AccountView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: selectedCoursePage ?? _buildScreens()[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
          selectedCoursePage = null; // رجوع للصفحات الأساسية
        }),
        backgroundColor: Colors.white,
        elevation: 8,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: BottomNavItem(
              isSelected: currentIndex == 0,
              icon: Icons.menu_book,
              label: "Courses",
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: BottomNavItem(
              isSelected: currentIndex == 1,
              icon: Icons.school_outlined,
              label: "My Learning",
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: BottomNavItem(
              isSelected: currentIndex == 2,
              icon: Icons.person_outline,
              label: "Account",
            ),
          ),
        ],
      ),
    );
  }
}
