import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider()),
        SizedBox(width: 20),
        Text(
          "OR SIGN UP WITH",
          style: TextStyle(fontSize: 13, color: Color(0xFF777A86)),
        ),
        SizedBox(width: 20),
        Expanded(child: Divider()),
      ],
    );
  }
}
