import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-13, 0),
      child: Row(
        children: [
          Checkbox(
            activeColor: AppColors.primary,
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(5),
            ),
            side: const BorderSide(width: 1, color: Color(0xFFC4C3CB)),
          ),

          const Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "I agree to the ", style: Styles.authText),
                  TextSpan(text: "Terms of Service ", style: Styles.authAction),
                  TextSpan(text: "and ", style: Styles.authText),
                  TextSpan(text: "Privacy Policy", style: Styles.authAction),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
