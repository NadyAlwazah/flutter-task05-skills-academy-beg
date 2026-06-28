import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';

class CourseCardItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String instructor;
  final double rating;
  final double price;
  final String category;
  final Color categoryBackgroundColor;
  final Color categoryTextColor;

  final VoidCallback? onTap;

  const CourseCardItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.instructor,
    required this.rating,
    required this.price,
    required this.category,
    required this.categoryBackgroundColor,
    required this.categoryTextColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6.r,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  Image section
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12.r),
                  ),
                  child: Image.asset(
                    imagePath,
                    height: 160.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: categoryBackgroundColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        color: categoryTextColor,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //  Text section
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: Colors.grey,
                        size: 14.r,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        instructor,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star_border_purple500_outlined,
                            size: 16.r,
                          ),
                          const SizedBox(width: 4),
                          Text(rating.toString()),
                        ],
                      ),
                      Text(
                        '\$${price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
