import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/app_action_button.dart';

import '../../../../../core/utils/assets.dart';

class AuthButtonsRow extends StatelessWidget {
  const AuthButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final iconSize = MediaQuery.of(context).size.width * .07;
    return Row(
      children: [
        Expanded(
          child: AppActionButton(
            leading: Image.asset(
              AssetsData.google,
              width: iconSize,
              height: iconSize,
            ),
            text: "Google",
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: AppActionButton(
            leading: Image.asset(
              AssetsData.menu,
              width: iconSize,
              height: iconSize,
            ),
            text: "Apple",
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
