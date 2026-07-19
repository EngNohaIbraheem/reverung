import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_styles.dart';
import '../../../core/constants/app_coclors.dart';

class GetStartedButton extends StatelessWidget {
  final VoidCallback onTap;

  const GetStartedButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          "Get Started",
          style: AppTextStyles.button,
        ),
      ),
    );
  }
}