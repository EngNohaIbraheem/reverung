import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_item.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_item.dart';

class CategoryGrid extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategoryGrid({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: .9,
        ),
        itemBuilder: (context, index) {
          return CategoryItem(
            category: categories[index],
          );
        },
      ),
    );
  }
}
// class CategoryGrid extends StatelessWidget {
//   const CategoryGrid({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<CategoryModel> categories = [
//       CategoryModel(
//         title: 'Consultation',
//         icon: Icons.medical_services_outlined,
//         color: Colors.orange,
//       ),
//       CategoryModel(
//         title: 'Dental',
//         icon: Icons.medical_information_outlined,
//         color: Colors.blue,
//       ),
//       CategoryModel(
//         title: 'Heart',
//         icon: Icons.favorite,
//         color: Colors.red,
//       ),
//       CategoryModel(
//         title: 'Hospitals',
//         icon: Icons.local_hospital,
//         color: Colors.green,
//       ),
//       CategoryModel(
//         title: 'Medicines',
//         icon: Icons.medication_outlined,
//         color: Colors.purple,
//       ),
//       CategoryModel(
//         title: 'Physician',
//         icon: Icons.person_outline,
//         color: Colors.teal,
//       ),
//       CategoryModel(
//         title: 'Skin',
//         icon: Icons.spa_outlined,
//         color: Colors.pink,
//       ),
//       CategoryModel(
//         title: 'Surgeon',
//         icon: Icons.health_and_safety_outlined,
//         color: Colors.indigo,
//       ),
//     ];
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: GridView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: categories.length,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 4,
//           crossAxisSpacing: 15,
//           mainAxisSpacing: 20,
//           childAspectRatio: .8,
//         ),
//         itemBuilder: (context, index) {
//           return CategoryCard(category: categories[index]);
//         },
//       ),
//     );
//   }
// }
//
// class CategoryCard extends StatelessWidget {
//   final CategoryModel category;
//
//   const CategoryCard({
//     super.key,
//     required this.category,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 65,
//           width: 65,
//           decoration: BoxDecoration(
//             color: category.color.withOpacity(.12),
//             borderRadius: BorderRadius.circular(18),
//           ),
//           child: Icon(
//             category.icon,
//             color: category.color,
//             size: 32,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           category.title,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class CategoryModel {
//   final String title;
//   final IconData icon;
//   final Color color;
//
//   CategoryModel({
//     required this.title,
//     required this.icon,
//     required this.color,
//   });
// }