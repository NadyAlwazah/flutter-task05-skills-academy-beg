import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';

class CoursesAppBarActions extends StatelessWidget {
  const CoursesAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.transparent,
        child: ClipOval(
          child: Image.asset(
            AssetsData.instructorProfile,
            fit: BoxFit.cover,
            width: 40,
            height: 40,
          ),
        ),
      ),
    );
  }
}
