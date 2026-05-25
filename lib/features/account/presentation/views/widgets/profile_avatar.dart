import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.second,
          radius: 40,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 37,
            backgroundImage: AssetImage(AssetsData.accountPhoto),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(6),
            child: const Icon(
              Icons.edit_outlined,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}
