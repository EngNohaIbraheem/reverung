import 'package:flutter/material.dart';

class AvailabilitySection extends StatelessWidget {
  const AvailabilitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [

        Text(
          "Today, 23 Feb",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 20),

        Text(
          "No slots available",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}