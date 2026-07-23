import 'package:flutter/material.dart';

import '../data/home_dummy_data.dart';
import 'category_grid.dart';
import 'featured_doctor_section.dart';
import 'home_header.dart';
import 'live_doctors_section.dart';
import 'popular_doctor_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          const HomeHeader(),

          const SizedBox(height: 20),

          LiveDoctorsSection(
            doctors: liveDoctors,
          ),

          const SizedBox(height: 30),

          CategoryGrid(
            categories: categories,
          ),

          const SizedBox(height: 30),

          PopularDoctorSection(
            doctors: popularDoctors,
          ),

          const SizedBox(height: 30),

          FeaturedDoctorSection(
            doctors: featuredDoctors,
          ),

          const SizedBox(height: 20),

        ],
      ),
    );
  }
}