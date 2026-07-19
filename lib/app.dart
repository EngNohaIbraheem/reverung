import 'package:flutter/material.dart';
import 'package:newfashionstore/core/config/router/app_router.dart';

import 'features/Home/screens/Home_screen.dart';
import 'features/onboarding/screens/onboarding_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shopping online',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: OnboardingScreen.routeName,
    );
  }
}
