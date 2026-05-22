import 'package:flutter/material.dart';

class CourseModel {
  final String imagePath;
  final String title;
  final String instructor;
  final double rating;
  final double price;
  final String category;
  final Color categoryBackgroundColor;
  final Color categoryTextColor;

  CourseModel({
    required this.imagePath,
    required this.title,
    required this.instructor,
    required this.rating,
    required this.price,
    required this.category,
    required this.categoryBackgroundColor,
    required this.categoryTextColor,
  });
}
