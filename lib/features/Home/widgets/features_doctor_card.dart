import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';
import 'package:flutter/material.dart';

import '../../doctor_details/screens/doctor_details_screen.dart';
import '../models/doctor_model.dart';
import 'package:flutter/material.dart';

import '../models/featured_doctor_model.dart';

class FeaturedDoctorCard extends StatelessWidget {
  final FeaturedDoctorModel doctor;

  const FeaturedDoctorCard({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              doctor.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: doctor.isFavorite
                  ? Colors.red
                  : Colors.grey,
            ),
          ),

          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(
              doctor.image,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            doctor.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 18,
                color: Colors.amber,
              ),
              const SizedBox(width: 5),
              Text(
                doctor.rating.toString(),
              ),
            ],
          ),

          const Spacer(),

          Text(
            "\$${doctor.price}/hour",
            style: const TextStyle(
              color: Color(0xff10C98E),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
// class FeaturedDoctorCard extends StatelessWidget {
//   final DoctorModel doctor;
//
//   const FeaturedDoctorCard({
//     super.key,
//     required this.doctor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//
//       borderRadius: BorderRadius.circular(16),
//
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (_) => const DoctorDetailsScreen(),
//           ),
//         );
//       },
//
//       child: Container(
//
//         width: 115,
//
//         padding: const EdgeInsets.all(10),
//
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.05),
//               blurRadius: 8,
//             ),
//           ],
//         ),
//
//         child: Column(
//
//           children: [
//
//             Row(
//
//               children: [
//
//                 Icon(
//                   doctor.isFavorite
//                       ? Icons.favorite
//                       : Icons.favorite_border,
//                   color: doctor.isFavorite
//                       ? Colors.red
//                       : Colors.grey,
//                   size: 16,
//                 ),
//
//                 const Spacer(),
//
//                 const Icon(
//                   Icons.star,
//                   color: Colors.amber,
//                   size: 16,
//                 ),
//
//                 const SizedBox(width: 3),
//
//                 Text(
//                   doctor.rating.toString(),
//                   style: const TextStyle(fontSize: 12),
//                 ),
//               ],
//             ),
//
//             const SizedBox(height: 8),
//
//             CircleAvatar(
//               radius: 28,
//               backgroundImage: AssetImage(
//                 doctor.image,
//               ),
//             ),
//
//             const SizedBox(height: 8),
//
//             Text(
//               doctor.name,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               style: const TextStyle(
//                 fontSize: 13,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//
//             const SizedBox(height: 4),
//
//             RichText(
//               text: TextSpan(
//                 children: [
//
//                   const TextSpan(
//                     text: "\$ ",
//                     style: TextStyle(
//                       color: Colors.green,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//
//                   TextSpan(
//                     text:
//                     "${doctor.price.toStringAsFixed(2)}/ hours",
//                     style: const TextStyle(
//                       color: Colors.grey,
//                       fontSize: 11,
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// class FeaturedDoctorCard extends StatelessWidget {
//
//   final DoctorModel doctor;
//
//   const FeaturedDoctorCard({
//     super.key,
//     required this.doctor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 120,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(18),
//       ),
//       child: Column(
//         children: [
//           CircleAvatar(
//             radius: 30,
//             backgroundImage: AssetImage(doctor.image),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             doctor.name,
//             style: const TextStyle(
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           Text(
//             '\$${doctor.price}/hours',
//           )
//         ],
//       ),
//     );
//   }
// }