import 'package:flutter/material.dart';

import '../models/live_doctor_model.dart';
import 'live_doctor_card.dart';
import 'section_title.dart';

class LiveDoctorsSection extends StatelessWidget {
  final List<LiveDoctorModel> doctors;

  const LiveDoctorsSection({
    super.key,
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(title: "Live Doctors"),
        const SizedBox(height: 15),
        SizedBox(
          height: 180,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: doctors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: LiveDoctorCard(
                  doctor: doctors[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}