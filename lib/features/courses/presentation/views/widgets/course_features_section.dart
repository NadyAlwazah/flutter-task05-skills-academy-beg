import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class CourseFeaturesSection extends StatelessWidget {
  const CourseFeaturesSection({super.key});

  final List<Map<String, dynamic>> features = const [
    {"icon": Icons.play_circle_outline, "text": "48 Hours of HD Video"},
    {
      "icon": Icons.insert_drive_file_outlined,
      "text": "12 Downloadable Resources",
    },
    {"icon": Icons.devices_outlined, "text": "Access on Mobile & Desktop"},
    {
      "icon": Icons.workspace_premium_outlined,
      "text": "Certificate of Completion",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0xFFB8BCC0), width: 0.2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Course Features", style: Styles.sectionTitle),
          const SizedBox(height: 12),
          ...features.map(
            (feature) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Icon(feature["icon"], color: AppColors.primary, size: 22.r),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(feature["text"], style: Styles.textStyle14W500),
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 24.h, color: const Color(0xFFF4F4F4)),
          Text(
            "Regular Price",
            style: Styles.descriptionText.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                "\$94.99",
                style: Styles.textStyle24Bold.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                "\$149.99",
                style: TextStyle(
                  color: Color(0xFF4E4D53),
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
