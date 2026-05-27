import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/widgets/my_learning_header.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/widgets/my_learning_info_section.dart';

class MyLearningViewBody extends StatelessWidget {
  const MyLearningViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyLearningHeader(),
            SizedBox(height: 24),
            MyLearningInfoSection(),
          ],
        ),
      ),
    );
  }
}
