import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';

class AccountAppBarActions extends StatelessWidget {
  const AccountAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 20,
        child: Image.asset(
          AssetsData.accountPhoto,
          fit: BoxFit.cover,
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
