import 'package:flutter/material.dart';

class LanguagesSpecialOfferScreen extends StatelessWidget {
  const LanguagesSpecialOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Languages Special Offer")),
      body: const Center(
        child: Text(
          "Exclusive language courses and discounts!",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
