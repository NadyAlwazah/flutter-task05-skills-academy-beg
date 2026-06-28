import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';

abstract class Styles {
  static TextStyle appBarTitle = TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w500,
    fontSize: 26.sp,
  );

  static TextStyle heading1 = TextStyle(
    fontSize: 34.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle authText = TextStyle(
    color: const Color(0xFF606168),
    fontSize: 13.sp,
  );

  static TextStyle authAction = TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
    fontSize: 13.sp,
  );

  static TextStyle buttonText = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 17.sp,
  );
  static TextStyle textStyle24Bold = TextStyle(
    fontSize: 24.sp,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle15W500 = TextStyle(
    color: Colors.white,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle12W500 = TextStyle(
    color: Colors.white,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle16W600 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static TextStyle textStyle13W500 = TextStyle(
    color: AppColors.primary,
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle14W500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static TextStyle textStyle22W300 = TextStyle(
    fontSize: 22.sp,
    letterSpacing: 2,
    fontWeight: FontWeight.w300,
  );
  static TextStyle textStyle22W500 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle29Bold = TextStyle(
    fontSize: 29.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle30W700 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: 1,
  );
  static TextStyle instructorLabel = TextStyle(
    color: const Color(0xFF606168),
    fontSize: 12.sp,
    letterSpacing: 2,
    fontWeight: FontWeight.w500,
  );

  static TextStyle instructorName = TextStyle(
    color: AppColors.primary,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle descriptionText = TextStyle(
    color: const Color(0xFF606168),
    fontSize: 15.sp,
  );
  static TextStyle sectionTitle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
}
