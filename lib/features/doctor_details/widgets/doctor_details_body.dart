import 'package:flutter/material.dart';

import '../data/doctor_dummy_data.dart';
import 'doctor_card.dart';
import 'doctor_map.dart';
import 'doctor_statistics.dart';
import 'services_section.dart';

class DoctorDetailsBody extends StatelessWidget {
  const DoctorDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const SizedBox(height: 15),

          Row(
            children: [

              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
              ),

              const SizedBox(width: 20),

              const Expanded(
                child: Text(
                  "Doctor Details",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
          ),

          const SizedBox(height: 25),

          DoctorCard(
            doctor: doctor,
          ),

          const SizedBox(height: 25),

          const DoctorStatistics(),

          const SizedBox(height: 35),

          ServicesSection(
            services: services,
          ),

          const SizedBox(height: 30),

          const DoctorMap(),
        ],
      ),
    );
  }
}