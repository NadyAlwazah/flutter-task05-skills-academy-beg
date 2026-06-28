import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class LanguagesSpecialOfferScreen extends StatelessWidget {
  const LanguagesSpecialOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Languages Special Offer")),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBanner(),

            const SizedBox(height: 20),

            Text("Available Offers", style: Styles.sectionTitle),

            const SizedBox(height: 12),

            _buildOfferItem("Mastering Flutter", "50% OFF"),
            _buildOfferItem("Full-Stack", "30% OFF"),
            _buildOfferItem("Advanced AI", "40% OFF"),

            const Spacer(),

            _buildExploreButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Text(
        "Special Discounts on Language Courses!",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildOfferItem(String title, String offer) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFFF5F5FF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(fontSize: 16)),
            Text(
              offer,
              style: Styles.textStyle15W500.copyWith(color: AppColors.primary),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExploreButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: const Text(
          "Explore All Languages",
          style: Styles.textStyle16W600,
        ),
      ),
    );
  }
}
