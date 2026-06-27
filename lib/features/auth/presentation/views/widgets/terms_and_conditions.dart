import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task05_skills_academy_beg/core/theme/app_colors.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-13.w, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Transform.scale(
              scale: 1.1.r,
              child: Checkbox(
                activeColor: AppColors.primary,
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                    widget.onChanged(value);
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                side: const BorderSide(width: 1, color: Color(0xFFC4C3CB)),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "I agree to the ", style: Styles.authText),
                    TextSpan(
                      text: "Terms of Service ",
                      style: Styles.authAction,
                    ),
                    TextSpan(text: "and ", style: Styles.authText),
                    TextSpan(text: "Privacy Policy", style: Styles.authAction),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
