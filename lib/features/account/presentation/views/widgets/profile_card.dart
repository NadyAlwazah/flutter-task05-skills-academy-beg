import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/ProfileBadge.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/profile_avatar.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Profile Image
          const ProfileAvatar(),
          const SizedBox(height: 12),

          //  User Name and Email
          Text(
            'Julian Sterling',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),

          Text(
            'julian.sterling@growthmail.com',
            style: TextStyle(fontSize: 14.sp, color: Colors.grey),
          ),

          const SizedBox(height: 12),

          // Badges
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileBadge(
                backgroundColor: AppColors.second,
                textColor: AppColors.primary,
                label: 'Pro Member',
                icon: Container(
                  width: 18.w,
                  height: 18.w,
                  decoration: BoxDecoration(
                    color: AppColors.second,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.primary, width: 2),
                  ),
                  child: Icon(Icons.star, color: AppColors.primary, size: 12.r),
                ),
              ),

              const SizedBox(width: 8),
              ProfileBadge(
                backgroundColor: Colors.grey.shade200,
                textColor: Colors.black87,
                label: '12 Certificates',
                icon: SvgPicture.asset(
                  AssetsData.medalStarSvg,
                  width: 18.w,
                  height: 18.w,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
