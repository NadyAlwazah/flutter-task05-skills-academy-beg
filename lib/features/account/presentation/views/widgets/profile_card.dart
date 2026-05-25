import 'package:flutter/material.dart';
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
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
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
          const Text(
            'Julian Sterling',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),

          const Text(
            'julian.sterling@growthmail.com',
            style: TextStyle(color: Colors.grey),
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
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: AppColors.second,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.primary, width: 2),
                  ),
                  child: const Icon(
                    Icons.star,
                    color: AppColors.primary,
                    size: 12,
                  ),
                ),
              ),

              const SizedBox(width: 8),
              ProfileBadge(
                backgroundColor: Colors.grey.shade200,
                textColor: Colors.black87,
                label: '12 Certificates',
                icon: SvgPicture.asset(
                  AssetsData.medalStarSvg,
                  width: 18,
                  height: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
