import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {

  final String title;
  final String subtitle;

  const AuthHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      children: [

        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff677294),
            height: 1.6,
          ),
        ),
      ],
    );
  }
}