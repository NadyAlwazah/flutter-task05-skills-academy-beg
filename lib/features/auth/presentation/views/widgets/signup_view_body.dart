import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Create Account",
              style: Styles.heading1.copyWith(color: AppColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
