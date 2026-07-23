import 'package:flutter/material.dart';

import '../models/doctor_model.dart';
import 'book_now_button.dart';

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
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 10,
          ),
        ],
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

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    Text(
                      doctor.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      doctor.specialization,
                      style: const TextStyle(
                        color: Color(0xff677294),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [

                        Row(
                          children: List.generate(
                            5,
                                (index) => Icon(
                              Icons.star,
                              size: 18,
                              color: index < doctor.rating
                                  ? Colors.amber
                                  : Colors.grey.shade300,
                            ),
                          ),
                        ),

                        const Spacer(),

                        Text(
                          "\$ ${doctor.price}/hr",
                          style: const TextStyle(
                            color: Color(0xff10C98E),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              Icon(
                doctor.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.red,
              ),
            ],
          ),

          const SizedBox(height: 20),

          const BookNowButton(),
        ],
      ),
    );
  }
}