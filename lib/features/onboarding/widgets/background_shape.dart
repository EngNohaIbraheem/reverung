import 'package:flutter/material.dart';

import '../../../core/constants/app_coclors.dart';


class BackgroundShape extends StatelessWidget {
  const BackgroundShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Positioned(
          top: -130,
          left: -130,
          child: Container(
            width: 270,
            height: 270,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
          ),
        ),

        Positioned(
          right: -60,
          bottom: 80,
          child: Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  AppColors.primary.withOpacity(.25),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}