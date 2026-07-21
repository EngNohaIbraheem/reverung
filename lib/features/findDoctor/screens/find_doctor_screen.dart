import 'package:flutter/material.dart';

import '../data/doctor_dummy_data.dart';
import '../widgets/doctor_list.dart';
import '../widgets/find_doctor_appbar.dart';

class FindDoctorScreen extends StatelessWidget {
  const FindDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xffF6FBFF),

      body: SafeArea(
        child: Column(

          children: [

            const FindDoctorAppBar(),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomSearchBar(),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: DoctorList(
                doctors: doctors,
              ),
            )

          ],

        ),
      ),
    );
  }
}