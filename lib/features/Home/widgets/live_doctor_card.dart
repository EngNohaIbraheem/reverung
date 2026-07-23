import 'package:flutter/material.dart';

import '../models/live_doctor_model.dart';

class LiveDoctorCard extends StatelessWidget {
  final LiveDoctorModel doctor;

  const LiveDoctorCard({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Stack(
        children: [
          Image.asset(
            doctor.image,
            width: 130,
            height: 180,
            fit: BoxFit.cover,
          ),

          Positioned(
            top: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius:
                BorderRadius.circular(10),
              ),
              child: const Text(
                "LIVE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
            ),
          ),

          const Center(
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: Icon(Icons.play_arrow),
            ),
          ),
        ],
      ),
    );
  }
}