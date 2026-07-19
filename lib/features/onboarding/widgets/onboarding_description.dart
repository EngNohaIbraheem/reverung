import 'package:flutter/material.dart';

class OnboardingDescription extends StatelessWidget {

  final String text;

  const OnboardingDescription({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 24),

      child: Text(

        text,

        textAlign: TextAlign.center,

        style: const TextStyle(
          color: Color(0xff8F9BB3),
          fontSize: 16,
          height: 1.6,
        ),
      ),
    );
  }
}