import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class HaveAnAccountWidget extends StatelessWidget {
  final VoidCallback? onLoginTap;

  const HaveAnAccountWidget({super.key, this.onLoginTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account? ", style: Styles.authText),
        GestureDetector(
          onTap: onLoginTap,
          child: const Text("Log In", style: Styles.authAction),
        ),
      ],
    );
  }
}
