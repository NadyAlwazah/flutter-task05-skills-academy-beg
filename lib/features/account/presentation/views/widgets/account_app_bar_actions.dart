import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';

class AccountAppBarActions extends StatelessWidget {
  const AccountAppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 20,
        backgroundImage: AssetImage(AssetsData.accountPhoto),
      ),
    );
  }
}
