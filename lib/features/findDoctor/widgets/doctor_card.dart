import 'package:flutter/material.dart';

import '../models/doctor_model.dart';
import 'book_button.dart';
import 'doctor_availability.dart';
import 'doctor_info.dart';
import 'doctor_statistics.dart';
import 'favorite_button.dart';

class DoctorCard extends StatelessWidget {

  final DoctorModel doctor;

  const DoctorCard({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius: BorderRadius.circular(20),

      ),

      child: Column(

        children: [

          Row(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              ClipRRect(

                borderRadius: BorderRadius.circular(12),

                child: Image.asset(
                  doctor.image,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),

              ),

              const SizedBox(width: 15),

              Expanded(

                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Row(

                      children: [

                        Expanded(
                          child: DoctorInfo(
                            doctor: doctor,
                          ),
                        ),

                        FavoriteButton(
                          isFavorite: doctor.isFavorite,
                        )

                      ],

                    ),

                    const SizedBox(height: 8),

                    DoctorStatistics(
                      doctor: doctor,
                    )

                  ],

                ),

              )

            ],

          ),

          const SizedBox(height: 16),

          Row(

            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

            children: [

              DoctorAvailability(
                doctor: doctor,
              ),

              const BookButton()

            ],

          )

        ],

      ),

    );
  }
}