import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';

class CoursesAppBarActions extends StatelessWidget {
  const CoursesAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(AssetsData.profileUserSvg),
    );
  }
}
