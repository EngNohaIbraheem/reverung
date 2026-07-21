import 'package:flutter/material.dart';
import '../widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF8FCFF),
      body: SafeArea(
        child: LoginBody(),
      ),
    );
  }
}