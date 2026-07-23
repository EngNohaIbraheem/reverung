import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';

class FeaturedDoctorCard extends StatelessWidget {

  final DoctorModel doctor;

  const FeaturedDoctorCard({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(doctor.image),
          ),
          const SizedBox(height: 8),
          Text(
            doctor.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '\$${doctor.price}/hours',
          )
        ],
      ),
    );
  }
}