import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';
class PopularDoctorCard extends StatelessWidget {

  final DoctorModel doctor;

  const PopularDoctorCard({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                doctor.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            doctor.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            doctor.speciality,
          ),
        ],
      ),
    );
  }
}