import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class MyLearningCourseCard extends StatelessWidget {
  final String imagePath;
  final String? category;
  final String title;
  final String? description;
  final double progress;
  final String? buttonText;
  final String? status;
  final String? progressLabel;
  final bool showProgressValue;

  const MyLearningCourseCard({
    super.key,
    required this.imagePath,
    this.category,
    required this.title,
    this.description,
    required this.progress,
    this.buttonText,
    this.status,
    this.progressLabel,
    this.showProgressValue = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image + Status
          _buildImageWithStatus(),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (category != null) _buildCategory(),
                _buildTitle(),
                const SizedBox(height: 6),
                if (description != null)
                  Column(
                    children: [_buildDescription(), const SizedBox(height: 12)],
                  ),

                // Progress bar
                if (progressLabel != null)
                  Column(
                    children: [_buildProgressRow(), const SizedBox(height: 6)],
                  ),

                _buildProgressBar(),
                const SizedBox(height: 16),

                // Button
                if (buttonText != null) _buildButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithStatus() => Stack(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 160,
        ),
      ),
      if (status != null)
        Positioned(
          top: 12,
          right: 12,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(status!, style: Styles.textStyle12W500),
          ),
        ),
    ],
  );

  Widget _buildTitle() => Text(
    title,
    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
  );

  Widget _buildDescription() =>
      Text(description!, style: Styles.descriptionText.copyWith(fontSize: 14));
  Widget _buildProgressRow() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        progressLabel!,
        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
      ),
      if (showProgressValue)
        Text('${progress.toInt()}%', style: Styles.textStyle13W500),
    ],
  );

  Widget _buildProgressBar() => LinearProgressIndicator(
    value: progress / 100,
    color: AppColors.primary,
    backgroundColor: Colors.grey[300],
    minHeight: 6,
    borderRadius: BorderRadius.circular(10),
  );
  Widget _buildCategory() => Text(
    category!.toUpperCase(),
    style: Styles.descriptionText.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF6A6984),
      letterSpacing: 0.5,
    ),
  );
  Widget _buildButton() => SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 12),
      ),
      onPressed: () {},
      child: Text(buttonText!, style: Styles.textStyle16W600),
    ),
  );
}
