import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';

abstract class Styles {
  static TextStyle appBarTitle = const TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w500,
    fontSize: 26,
  );

  static const TextStyle heading1 = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle authText = TextStyle(
    color: Color(0xFF606168),
    fontSize: 14,
  );

  static const TextStyle authAction = TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static const TextStyle buttonText = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 17,
  );
  static const TextStyle textStyle24Bold = TextStyle(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle textStyle15W500 = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle instructorLabel = TextStyle(
    color: Color(0xFF606168),
    fontSize: 12,
    letterSpacing: 2,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle instructorName = TextStyle(
    color: AppColors.primary,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle descriptionText = TextStyle(
    color: Color(0xFF606168),
    fontSize: 15,
  );
  static const TextStyle sectionTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
}
