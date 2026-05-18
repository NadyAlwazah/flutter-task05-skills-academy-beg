import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.school_outlined, color: AppColors.primary),
            SizedBox(width: 5),
            Text("Skills Academy", style: Styles.appBarTitle),
          ],
        ),
      ),
      body: SignupViewBody(),
    );
  }
}
