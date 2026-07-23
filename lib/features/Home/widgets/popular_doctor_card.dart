import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';
import 'package:flutter/material.dart';

import '../models/doctor_model.dart';

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
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        children: [

          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),
              child: Image.asset(
                doctor.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            doctor.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            doctor.specialty,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 8),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star,
                  color: Colors.amber, size: 18),
              Icon(Icons.star,
                  color: Colors.amber, size: 18),
              Icon(Icons.star,
                  color: Colors.amber, size: 18),
              Icon(Icons.star,
                  color: Colors.amber, size: 18),
            ],
          ),

          const SizedBox(height: 12),
        ],
      ),
    );
  }
}