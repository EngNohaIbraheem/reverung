import 'package:flutter/material.dart';

import '../models/doctor_model.dart';

class DoctorAvailability extends StatelessWidget {

  final DoctorModel doctor;

  const DoctorAvailability({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        const Text(
          "Next Available",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 4),

        RichText(

          text: TextSpan(

            children: [

              TextSpan(
                text: doctor.availableTime,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const TextSpan(
                text: " tomorrow",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )

            ],

          ),

        )

      ],

    );
  }
}