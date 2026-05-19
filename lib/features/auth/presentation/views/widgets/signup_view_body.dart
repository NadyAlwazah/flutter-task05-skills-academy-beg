import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/custom_button.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/form_label.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Account",
                style: Styles.heading1.copyWith(color: AppColors.primary),
              ),

              const Text(
                "Start your journey with professional-grade learning.",
                style: TextStyle(color: Color(0xFF2F2F39)),
              ),

              const SizedBox(height: 16),

              const FormLabel(text: "Full Name"),

              const CustomTextFormField(
                hintText: "Enter your full name",
                textInputType: TextInputType.text,
              ),

              const SizedBox(height: 8),

              const FormLabel(text: "Email Address"),

              const CustomTextFormField(
                hintText: "name@example.com",
                textInputType: TextInputType.text,
              ),

              const SizedBox(height: 8),

              const FormLabel(text: "Password"),

              const CustomTextFormField(
                hintText: "Min. 8 characters ",
                textInputType: TextInputType.text,
                obscureText: true,
              ),

              const SizedBox(height: 8),

              const TermsAndConditions(),

              const SizedBox(height: 8),

              CustomButton(
                text: "Register",
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
              ),

              const SizedBox(height: 16),

              const OrDivider(),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
