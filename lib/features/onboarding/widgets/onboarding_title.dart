import 'package:flutter/material.dart';

class OnboardingTitle extends StatelessWidget {

  final String title;

  const OnboardingTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      title,
      style: const TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}