import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  final String image;

  const OnboardingImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 330,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}