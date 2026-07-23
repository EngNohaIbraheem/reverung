import 'package:flutter/material.dart';

import '../models/model.dart';
import 'features_doctor_card.dart';
import 'package:flutter/material.dart';

import '../models/doctor_model.dart';
import 'featured_doctor_card.dart';
import 'section_title.dart';

class FeaturedDoctorSection extends StatelessWidget {
  final List<DoctorModel> doctors;

  const FeaturedDoctorSection({
    super.key,
    required this.doctors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const SectionTitle(
          title: "Feature Doctor",
        ),

        const SizedBox(height: 20),

        SizedBox(
          height: 150,

          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,

            itemCount: doctors.length,

            separatorBuilder: (_, __) =>
            const SizedBox(width: 15),

            itemBuilder: (_, index) {
              return FeaturedDoctorCard(
                doctor: doctors[index],
              );
            },
          ),
        )
      ],
    );
  }
}
// class FeaturedDoctorsSection extends StatelessWidget {
//   const FeaturedDoctorsSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<DoctorModel> featuredDoctors = [
//       DoctorModel(
//         name: 'Dr. Louis',
//         speciality: 'Heart Surgeon',
//         image: 'assets/images/doctor1.png',
//         rating: 4.8,
//         price: 30,
//       ),
//       DoctorModel(
//         name: 'Dr. Anna',
//         speciality: 'Dentist',
//         image: 'assets/images/doctor2.png',
//         rating: 4.9,
//         price: 25,
//       ),
//       DoctorModel(
//         name: 'Dr. Sara',
//         speciality: 'Neurologist',
//         image: 'assets/images/doctor3.png',
//         rating: 4.7,
//         price: 35,
//       ),
//     ];
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               const Text(
//                 'Feature Doctors',
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
//             height: 210,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemCount: featuredDoctors.length,
//               separatorBuilder: (_, __) => const SizedBox(width: 15),
//               itemBuilder: (context, index) {
//                 return FeaturedDoctorCard(
//                   doctor: featuredDoctors[index],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }