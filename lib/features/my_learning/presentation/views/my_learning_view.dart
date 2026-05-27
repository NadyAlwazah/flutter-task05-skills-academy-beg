import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/app_bar_action_avatar.dart';
import 'package:flutter_task05_skills_academy_beg/core/widgets/app_bar_title.dart';
import 'package:flutter_task05_skills_academy_beg/features/my_learning/presentation/views/widgets/my_learning_view_body.dart';

class MyLearningView extends StatelessWidget {
  const MyLearningView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // AppBar
        Padding(
          padding: EdgeInsets.only(top: 35, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppBarTitle(),
              AppBarActionAvatar(
                imagePath: AssetsData.myLearningProfile,
                isSvg: false,
              ),
            ],
          ),
        ),

        SizedBox(height: 8),

        // Body
        Expanded(child: MyLearningViewBody()),
      ],
    );
  }
}
