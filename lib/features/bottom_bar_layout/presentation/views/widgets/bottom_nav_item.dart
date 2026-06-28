import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';

class BottomNavItem extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final String label;

  const BottomNavItem({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.second : Colors.transparent,
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.black54),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
