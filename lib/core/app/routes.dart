import 'package:flutter_task05_skills_academy_beg/features/auth/presentation/views/signup_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/bottom_bar_layout/presentation/views/bottom_bar_layout.dart';

abstract class AppRouter {
  static const String kMain = '/main';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SignupView()),
      GoRoute(
        path: kMain,
        builder: (context, state) => const BottomBarLayout(),
      ),
    ],
  );
}
