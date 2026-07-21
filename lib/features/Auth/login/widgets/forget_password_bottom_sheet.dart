import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_button.dart';

class ForgotPasswordBottomSheet extends StatefulWidget {
  const ForgotPasswordBottomSheet({super.key});

  @override
  State<ForgotPasswordBottomSheet> createState() =>
      _ForgotPasswordBottomSheetState();
}

class _ForgotPasswordBottomSheetState
    extends State<ForgotPasswordBottomSheet> {

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: EdgeInsets.only(

        left: 20,

        right: 20,

        top: 20,

        bottom: MediaQuery.of(context).viewInsets.bottom + 20,

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

            "Forgot password",

            style: TextStyle(

              fontSize: 30,

              fontWeight: FontWeight.bold,

            ),

          ),

          const SizedBox(height: 15),

          const Text(

            "Enter your email for the verification process. We will send a 4-digit code to your email.",

            style: TextStyle(
              color: Color(0xff677294),
              height: 1.5,
            ),

          ),

          const SizedBox(height: 30),

          CustomTextField(

            controller: emailController,

            hintText: "Email",

            keyboardType: TextInputType.emailAddress,

          ),

          const SizedBox(height: 30),

          PrimaryButton(

            title: "Continue",

            onPressed: () {

              Navigator.pop(context);

            },

          ),

          const SizedBox(height: 20),

        ],
      ),
    );
  }
}