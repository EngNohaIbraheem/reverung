import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/social_button.dart';
import 'forgot_password_bottom_sheet.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),

      child: Form(
        key: _formKey,

        child: Column(
          children: [

            const SizedBox(height: 90),

            const Text(
              "Welcome back",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "You can search course, apply course and find scholarship for abroad studies",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff677294),
                height: 1.5,
              ),
            ),

            const SizedBox(height: 45),

            Row(
              children: [

                Expanded(
                  child: SocialButton(
                    title: "Google",
                    asset: "assets/icons/google.png",
                    onPressed: () {},
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: SocialButton(
                    title: "Facebook",
                    asset: "assets/icons/facebook.png",
                    onPressed: () {},
                  ),
                ),
              ],
            ),

            const SizedBox(height: 35),

            CustomTextField(
              controller: emailController,
              hintText: "Email",
              keyboardType: TextInputType.emailAddress,
              validator: (value) {

                if (value == null || value.isEmpty) {
                  return "Enter email";
                }

                return null;
              },
            ),

            const SizedBox(height: 20),

            CustomTextField(
              controller: passwordController,
              hintText: "Password",
              isPassword: true,
              validator: (value) {

                if (value == null || value.length < 6) {
                  return "Password is too short";
                }

                return null;
              },
            ),

            const SizedBox(height: 25),

            PrimaryButton(
              title: "Login",
              onPressed: () {

                if (_formKey.currentState!.validate()) {

                  Navigator.pushReplacementNamed(
                    context,
                    "/home",
                  );

                }

              },
            ),

            const SizedBox(height: 20),

            GestureDetector(

              onTap: () {

                showModalBottomSheet(

                  context: context,

                  isScrollControlled: true,

                  backgroundColor: Colors.white,

                  shape: const RoundedRectangleBorder(

                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),

                  ),

                  builder: (_) {

                    return const ForgotPasswordBottomSheet();

                  },

                );

              },

              child: const Text(

                "Forgot password",

                style: TextStyle(

                  color: Color(0xff10C98E),

                  fontWeight: FontWeight.bold,

                ),

              ),

            ),

            const SizedBox(height: 60),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                const Text(
                  "Don't have an account? ",
                ),

                GestureDetector(

                  onTap: () {

                    Navigator.pushReplacementNamed(
                      context,
                      "/signup",
                    );

                  },

                  child: const Text(

                    "Join us",

                    style: TextStyle(

                      color: Color(0xff10C98E),

                      fontWeight: FontWeight.bold,

                    ),

                  ),

                ),

              ],

            ),

          ],
        ),
      ),
    );
  }
}