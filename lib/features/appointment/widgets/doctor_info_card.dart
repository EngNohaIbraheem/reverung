import 'package:flutter/material.dart';

import '../models/doctor_model.dart';
import 'doctor_profile.dart';
import 'favorite_icon.dart';

class DoctorInfoCard extends StatelessWidget {
  final DoctorModel doctor;

  const DoctorInfoCard({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [

          DoctorProfile(image: doctor.image),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(
                  doctor.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  "${doctor.speciality}, ${doctor.location}",
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  children: List.generate(
                    5,
                        (index) => Icon(
                      Icons.star,
                      size: 16,
                      color: index < 4
                          ? Colors.amber
                          : Colors.grey.shade300,
                    ),
                  ),
                ),
              ],
            ),
          ),

          FavoriteIcon(
            favorite: doctor.favorite,
          )
        ],
      ),
    );
  }
}