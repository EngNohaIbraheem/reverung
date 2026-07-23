import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_button.dart';

class ResetPasswordBottomSheet extends StatelessWidget {
  const ResetPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {

    final passwordController = TextEditingController();

    final confirmController = TextEditingController();

    return Container(

      padding: const EdgeInsets.all(24),

      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),

      child: Column(

        mainAxisSize: MainAxisSize.min,

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Center(
            child: Container(
              width: 60,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          const SizedBox(height: 30),

          const Text(
            "Reset Password",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          const Text(
            "Set the new password for your account so you can login and access all the features.",
            style: TextStyle(
              color: Color(0xff677294),
            ),
          ),

          const SizedBox(height: 35),

          CustomTextField(
            controller: passwordController,
            hintText: "New Password",
            isPassword: true,
          ),

          const SizedBox(height: 20),

          CustomTextField(
            controller: confirmController,
            hintText: "Re-enter Password",
            isPassword: true,
          ),

          const SizedBox(height: 35),

          PrimaryButton(
            title: "Update Password",
            onPressed: () {

              Navigator.pop(context);

              Navigator.pushReplacementNamed(
                context,
                "/home",
              );

            },
          ),

          const SizedBox(height: 20),

        ],
      ),
    );
  }
}