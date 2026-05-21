import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/signup_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SignupView()),
    ],
  );
}
