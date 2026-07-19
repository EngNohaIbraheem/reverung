import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/Bottom_Navigation_Bar.dart';
import '../widgets/category_grid.dart';
import '../widgets/features_doctor_section.dart';
import '../widgets/header_section.dart';
import '../widgets/live_doctor_list.dart';
import '../widgets/popular_doctor_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const HomeBottomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HeaderSection(),
              SizedBox(height: 20),
              LiveDoctorsList(),
              SizedBox(height: 25),
              CategoryGrid(),
              SizedBox(height: 25),
              PopularDoctorsSection(),
              SizedBox(height: 25),
              FeaturedDoctorsSection(),
            ],
          ),
        ),
      ),
    );
  }
}