import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';

class HaveAnAccountWidget extends StatelessWidget {
  final VoidCallback? onLoginTap;

  const HaveAnAccountWidget({super.key, this.onLoginTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style: Styles.authText.copyWith(fontSize: 10.sp),
        ),
        GestureDetector(
          onTap: onLoginTap,
          child: Text(
            "Log In",
            style: Styles.authAction.copyWith(fontSize: 10.sp),
          ),
        ),
      ],
    );
  }
}
