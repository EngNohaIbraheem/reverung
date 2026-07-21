import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_button.dart';
import 'auth_header.dart';
import 'social_login_section.dart';
import 'terms_checkbox.dart';

import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/social_button.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController =
  TextEditingController();

  final TextEditingController emailController =
  TextEditingController();

  final TextEditingController passwordController =
  TextEditingController();

  bool agree = false;

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(

      padding: const EdgeInsets.all(20),

      child: Form(

        key: _formKey,

        child: Column(

          children: [

            const SizedBox(height: 80),

            const Text(

              "Join us to start searching",

              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),

            ),

            const SizedBox(height: 15),

            const Text(

              "You can search course, apply course and find scholarship for abroad studies",

              textAlign: TextAlign.center,

              style: TextStyle(
                color: Color(0xff677294),
              ),

            ),

            const SizedBox(height: 40),

            /// Google Button
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

            const SizedBox(height: 30),

            /// Name
            CustomTextField(

              controller: nameController,

              hintText: "Name",

              validator: (value){

                if(value==null || value.isEmpty){

                  return "Enter your name";

                }

                return null;

              },

            ),

            const SizedBox(height: 20),

            /// Email
            CustomTextField(

              controller: emailController,

              hintText: "Email",

              keyboardType: TextInputType.emailAddress,

              validator: (value){

                if(value==null || value.isEmpty){

                  return "Enter email";

                }

                return null;

              },

            ),

            const SizedBox(height: 20),

            /// Password
            CustomTextField(

              controller: passwordController,

              hintText: "Password",

              isPassword: true,

              validator: (value){

                if(value==null || value.length<6){

                  return "Password must be 6 characters";

                }

                return null;

              },

            ),

            const SizedBox(height: 20),

            Row(

              children: [

                Checkbox(

                  value: agree,

                  onChanged: (value){

                    setState(() {

                      agree=value!;

                    });

                  },

                ),

                const Expanded(

                  child: Text(

                    "I agree with the Terms of Service & Privacy Policy",

                    style: TextStyle(
                      fontSize: 12,
                    ),

                  ),

                )

              ],

            ),

            const SizedBox(height: 40),

            /// Sign Up Button
            PrimaryButton(

              title: "Sign Up",

              onPressed: (){

                if(_formKey.currentState!.validate()){

                  if(!agree){

                    ScaffoldMessenger.of(context).showSnackBar(

                      const SnackBar(

                        content: Text(
                          "Accept Terms first",
                        ),

                      ),

                    );

                    return;

                  }

                  Navigator.pushNamed(

                    context,

                    "/login",

                  );

                }

              },

            ),

            const SizedBox(height: 25),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                const Text(
                  "Have an account? ",
                ),

                GestureDetector(

                  onTap: (){

                    Navigator.pushNamed(

                      context,

                      "/login",

                    );

                  },

                  child: const Text(

                    "Log in",

                    style: TextStyle(

                      color: Color(0xff10C98E),

                      fontWeight: FontWeight.bold,

                    ),

                  ),

                )

              ],

            )

          ],

        ),

      ),

    );

  }

}
