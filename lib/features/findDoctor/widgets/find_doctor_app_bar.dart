import 'package:flutter/material.dart';

class FindDoctorAppBar extends StatelessWidget {
  const FindDoctorAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(

        children: [

          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {},
            ),
          ),

          const SizedBox(width: 20),

          const Text(
            "Find Doctors",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          )

        ],
      ),
    );
  }
}