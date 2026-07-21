import 'package:flutter/material.dart';

import '../models/doctor_model.dart';
import 'doctor_card.dart';

class DoctorList extends StatelessWidget {

  final List<DoctorModel> doctors;

  const DoctorList({
    super.key,
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {

    return ListView.separated(

      padding: const EdgeInsets.symmetric(horizontal: 20),

      itemCount: doctors.length,

      separatorBuilder: (_, __) => const SizedBox(height: 15),

      itemBuilder: (_, index) {

        return DoctorCard(
          doctor: doctors[index],
        );

      },

    );
  }
}