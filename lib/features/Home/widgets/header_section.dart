import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custum_search_bar.dart';
import 'home_app_bar.dart';
import 'package:flutter/material.dart';


class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF18C8A3),
            Color(0xFF20D6C7),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Column(
        children: [
          HomeAppBar(
            userName: "Handwerker",
            title: "Find Your Doctor",
            image: "assets/images/profile.png",
          ),

          const SizedBox(height: 25),

          CustomSearchBar(
            controller: searchController,
            hintText: "Search doctor...",
            onChanged: (value) {
              debugPrint(value);
            },
            onClear: () {
              searchController.clear();
            },
          ),
        ],
      ),
    );
  }
}
// class HeaderSection extends StatelessWidget {
//   const HeaderSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController searchController = TextEditingController();
//
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Color(0xff18C8A3),
//             Color(0xff20D6C7),
//           ],
//         ),
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(35),
//           bottomRight: Radius.circular(35),
//         ),
//       ),
//       child: Column(
//         children: [
//           const HomeAppBar(userName: '', title: '', image: '',),
//           const SizedBox(height: 25),
//
//           /// Search Bar
//           CustomSearchBar(
//             controller: searchController,
//             hintText: "Search.....",
//             onChanged: (value) {
//               debugPrint(value);
//             },
//             onClear: () {
//               searchController.clear();
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }