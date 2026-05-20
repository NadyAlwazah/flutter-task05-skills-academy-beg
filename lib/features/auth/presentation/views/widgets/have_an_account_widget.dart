import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Already have an account? ",
                style: Styles.authText,
              ),
              TextSpan(text: "Log In ", style: Styles.authAction),
            ],
          ),
        ),
      ],
    );
  }
}
