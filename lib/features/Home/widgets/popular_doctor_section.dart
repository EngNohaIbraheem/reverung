import 'package:flutter/material.dart';

import '../models/model.dart';
import 'popular_doctor_card.dart';
import 'package:flutter/material.dart';

import '../models/doctor_model.dart';
import 'popular_doctor_card.dart';
import 'section_title.dart';
import 'package:flutter/material.dart';

import '../models/popular_doctor_model.dart';
import 'popular_doctor_card.dart';
import 'section_title.dart';

class PopularDoctorSection extends StatelessWidget {
  final List<PopularDoctorModel> doctors;

  const PopularDoctorSection({
    super.key,
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const SectionTitle(
          title: "Popular Doctors",
        ),

        const SizedBox(height: 15),

        SizedBox(
          height: 250,
          child: ListView.separated(
            padding:
            const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: doctors.length,
            separatorBuilder: (_, __) =>
            const SizedBox(width: 15),
            itemBuilder: (context, index) {
              return PopularDoctorCard(
                doctor: doctors[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
// class PopularDoctorsSection extends StatelessWidget {
//   const PopularDoctorsSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<DoctorModel> popularDoctors = [
//       DoctorModel(
//         name: 'Dr. Fillerup Grab',
//         speciality: 'Medicine Specialist',
//         image: 'assets/images/doctor1.png',
//         rating: 4.8,
//         price: 25,
//       ),
//       DoctorModel(
//         name: 'Dr. Jessica',
//         speciality: 'Heart Surgeon',
//         image: 'assets/images/doctor3.png',
//         rating: 4.9,
//         price: 30,
//       ),
//       DoctorModel(
//         name: 'Dr. William',
//         speciality: 'Dentist',
//         image: 'assets/images/doctor3.png',
//         rating: 4.7,
//         price: 20,
//       ),
//     ];
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               const Text(
//                 'Popular Doctor',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const Spacer(),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text(
//                   'See all',
//                   style: TextStyle(
//                     color: Colors.teal,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//
//           const SizedBox(height: 15),
//
//           SizedBox(
//             height: 260,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemCount: popularDoctors.length,
//               separatorBuilder: (_, __) => const SizedBox(width: 16),
//               itemBuilder: (context, index) {
//                 return PopularDoctorCard(
//                   doctor: popularDoctors[index],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }