import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/account_cards_section.dart';
import 'package:flutter_task05_skills_academy_beg/features/account/presentation/views/widgets/profile_card.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [ProfileCard(), SizedBox(height: 5), AccountCardsSection()],
        ),
      ),
    );
  }
}
