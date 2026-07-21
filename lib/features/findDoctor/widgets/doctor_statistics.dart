import 'package:flutter/material.dart';

import '../models/doctor_model.dart';

class DoctorStatistics extends StatelessWidget {

  final DoctorModel doctor;

  const DoctorStatistics({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {

    return Row(

      children: [

        const Icon(
          Icons.circle,
          size: 10,
          color: Colors.green,
        ),

        const SizedBox(width: 4),

        Text("${doctor.rating}%"),

        const SizedBox(width: 20),

        const Icon(
          Icons.circle,
          size: 10,
          color: Colors.green,
        ),

        const SizedBox(width: 4),

        Text("${doctor.patients} Patient Stories"),

      ],

    );
  }
}