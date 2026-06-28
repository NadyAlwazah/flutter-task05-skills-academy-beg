import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';

class StreakBadgesStack extends StatelessWidget {
  const StreakBadgesStack({super.key});

  Widget _buildBadge({required Widget widget, required Color backgroundColor}) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: 20.r,
      child: widget,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100.w,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _buildBadge(
              widget: const Icon(
                Icons.local_fire_department_outlined,
                color: Colors.white,
              ),
              backgroundColor: AppColors.second,
            ),
            Positioned(
              left: 28,
              child: _buildBadge(
                widget: SvgPicture.asset(
                  AssetsData.medalStarSvg,
                  width: 25.w,
                  height: 25.w,
                  color: Colors.white,
                ),
                backgroundColor: Colors.amber,
              ),
            ),
            Positioned(
              left: 56,
              child: _buildBadge(
                widget: const Text("+3"),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
