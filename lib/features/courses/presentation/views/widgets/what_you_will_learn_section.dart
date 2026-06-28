import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class WhatYouWillLearnSection extends StatelessWidget {
  const WhatYouWillLearnSection({super.key});

  final List<String> topics = const [
    "Advanced Widget Composition & Custom Painting",
    "Scalable State Management Architectures",
    "API Integration & CI/CD Deployment Pipelines",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("What you'll learn", style: Styles.sectionTitle),
        const SizedBox(height: 12),
        ...topics.map(
          (topic) => Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF2F4F6),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: const Color(0xFFB8BCC0), width: 0.2),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Icon(
                    Icons.check_circle_outline,
                    color: AppColors.primary,
                    size: 22.r,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(child: Text(topic, style: Styles.descriptionText)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
