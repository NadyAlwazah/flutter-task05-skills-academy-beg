import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class MyLearningInfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color backgroundColor;
  final Color textColor;

  const MyLearningInfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: textColor, size: 22),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(color: textColor, fontWeight: FontWeight.w400),
          ),

          Text(value, style: Styles.textStyle29Bold.copyWith(color: textColor)),
        ],
      ),
    );
  }
}
