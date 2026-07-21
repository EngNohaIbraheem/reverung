import 'package:flutter/material.dart';

import '../models/doctor_model.dart';

class DoctorInfo extends StatelessWidget {

  final DoctorModel doctor;

  const DoctorInfo({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Text(
          doctor.name,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          doctor.speciality,
          style: const TextStyle(
            color: Colors.green,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          "${doctor.experience} Years experience",
          style: const TextStyle(
            color: Colors.grey,
          ),
        )

      ],

    );
  }
}