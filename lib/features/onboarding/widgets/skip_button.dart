import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Skip",
        style: AppTextStyles.skip,
      ),
    );
  }
}