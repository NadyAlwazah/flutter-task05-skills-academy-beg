import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/app_bar_title.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/account_app_bar_actions.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/account_view_body.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // AppBar
        Padding(
          padding: EdgeInsets.only(top: 35, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [AppBarTitle(), AccountAppBarActions()],
          ),
        ),

        SizedBox(height: 8),

        // Body
        Expanded(child: AccountViewBody()),
      ],
    );
  }
}
