import 'package:flutter/material.dart';

class DoctorMap extends StatelessWidget {
  const DoctorMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        image: const DecorationImage(
          image: AssetImage(
            "assets/images/map.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}