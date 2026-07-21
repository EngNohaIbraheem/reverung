import 'package:flutter/material.dart';

import '../models/appointment_day_model.dart';

class DayItem extends StatelessWidget {
  final AppointmentDayModel day;

  const DayItem({
    super.key,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,

      decoration: BoxDecoration(
        color: day.selected
            ? const Color(0xff10C98E)
            : Colors.white,

        borderRadius: BorderRadius.circular(10),

        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),

      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,

        children: [

          Text(
            day.day,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: day.selected
                  ? Colors.white
                  : Colors.black,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            day.slots,
            style: TextStyle(
              fontSize: 12,
              color: day.selected
                  ? Colors.white70
                  : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}