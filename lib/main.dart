import 'package:flutter/material.dart';
import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupView(),
    );
  }
}
