import 'package:flutter/material.dart';

import '../../../../core/widgets/social_button.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {

    return const Row(

      children: [

        Expanded(

          child: SocialButton(

            title: "Google",

            asset: "assets/icons/google.png",

          ),

        ),

        SizedBox(width: 15),

        Expanded(

          child: SocialButton(

            title: "Facebook",

            asset: "assets/icons/facebook.png",

          ),

        ),

      ],
    );
  }
}