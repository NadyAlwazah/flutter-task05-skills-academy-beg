import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/account_cards_section.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/profile_card.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/sign_out_button.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/streak_card.dart';
import 'package:go_router/go_router.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileCard(),

            const SizedBox(height: 5),

            const AccountCardsSection(),

            const SizedBox(height: 5),

            const StreakCard(),

            const SizedBox(height: 25),

            SignOutButton(
              onPressed: () {
                context.go('/');
              },
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
