import 'package:flutter/material.dart';

class AppActionButton extends StatelessWidget {
  final String text;
  final Widget leading;
  final VoidCallback onPressed;

  const AppActionButton({
    super.key,
    required this.text,
    required this.leading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final heightButton = MediaQuery.of(context).size.height * .065;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        maximumSize: Size(double.infinity, heightButton),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Color(0xFFC4C3CB)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leading,
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF2F2F39),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
