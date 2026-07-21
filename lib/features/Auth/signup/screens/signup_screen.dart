import 'package:flutter/material.dart';

import '../widgets/signup_body.dart';

import 'package:flutter/material.dart';
import '../widgets/signup_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF8FCFF),
      body: SafeArea(
        child: SignUpBody(),
      ),
    );
  }
}