import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/custom_button.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/auth_buttons_row.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/form_label.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/app/routes.dart';
import '../../../../../core/utils/validators.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isTermsAccepted = false;

  void _showTermsError() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        content: Text(
          "Please accept the Terms and Conditions to continue",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _onRegister() {
    if (!formKey.currentState!.validate()) return;

    if (!isTermsAccepted) {
      _showTermsError();
      return;
    }
    context.go(AppRouter.kMain);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
        bottom: 32,
      ),
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
                validator: Validators.validateFullName,
              ),

              const SizedBox(height: 8),

              const FormLabel(text: "Email Address"),

              const CustomTextFormField(
                hintText: "name@example.com",
                textInputType: TextInputType.emailAddress,
                validator: Validators.validateEmail,
              ),

              const SizedBox(height: 8),

              const FormLabel(text: "Password"),

              const CustomTextFormField(
                hintText: "Min. 8 characters ",
                textInputType: TextInputType.text,
                obscureText: true,
                validator: Validators.validatePassword,
              ),

              const SizedBox(height: 8),

              TermsAndConditions(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),

              const SizedBox(height: 8),

              CustomButton(text: "Register", onPressed: _onRegister),

              const SizedBox(height: 16),

              const OrDivider(),

              const SizedBox(height: 16),

              const AuthButtonsRow(),

              const SizedBox(height: 100),

              const HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
