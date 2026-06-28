import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';

class CoursesDetailsAppBarActions extends StatelessWidget {
  const CoursesDetailsAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 20.r,
        backgroundColor: Colors.transparent,
        child: ClipOval(
          child: SvgPicture.asset(
            AssetsData.appBarActionsDetailsViewSvg,
            fit: BoxFit.cover,
            width: 40.w,
            height: 40.w,
          ),
        ),
      ),
    );
  }
}
