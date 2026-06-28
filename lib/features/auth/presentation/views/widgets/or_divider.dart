import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        const SizedBox(width: 20),
        Text(
          "OR SIGN UP WITH",
          style: TextStyle(fontSize: 13.sp, color: const Color(0xFF777A86)),
        ),
        const SizedBox(width: 20),
        const Expanded(child: Divider()),
      ],
    );
  }
}
