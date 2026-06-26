import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/assets.dart';
import 'package:flutter_task05_skills_academy_beg/core/utils/styles.dart';

class InstructorInfoTile extends StatelessWidget {
  final String instructorName;

  const InstructorInfoTile({super.key, required this.instructorName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: Colors.white,
      leading: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.transparent,
        child: ClipOval(
          child: Image.asset(
            AssetsData.instructorProfile,
            fit: BoxFit.cover,
            width: 36,
            height: 36,
          ),
        ),
      ),
      title: const Text("INSTRUCTOR", style: Styles.instructorLabel),
      subtitle: Text(instructorName, style: Styles.instructorName),
    );
  }
}
