import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class AppBarTitleCoursesDetailsView extends StatelessWidget {
  const AppBarTitleCoursesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Skills Academy",
      style: Styles.appBarTitle.copyWith(fontWeight: FontWeight.w700),
    );
  }
}
