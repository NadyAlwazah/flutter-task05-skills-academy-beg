import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';

abstract class Styles {
  static TextStyle appBarTitle = const TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle heading1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
}
