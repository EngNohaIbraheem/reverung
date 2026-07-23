import 'package:flutter/material.dart';

import 'statistics_item.dart';

class DoctorStatistics extends StatelessWidget {
  const DoctorStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 12,
          )
        ],
      ),

      child: const Row(
        children: [

          Expanded(
            child: StatisticsItem(
              number: "100",
              title: "Runing",
            ),
          ),

          SizedBox(width: 12),

          Expanded(
            child: StatisticsItem(
              number: "500",
              title: "Ongoing",
            ),
          ),

          SizedBox(width: 12),

          Expanded(
            child: StatisticsItem(
              number: "700",
              title: "Patient",
            ),
          ),
        ],
      ),
    );
  }
}