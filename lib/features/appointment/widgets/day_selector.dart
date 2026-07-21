import 'package:flutter/material.dart';

import '../models/appointment_day_model.dart';
import 'day_item.dart';

class DaySelector extends StatelessWidget {
  final List<AppointmentDayModel> days;

  const DaySelector({
    super.key,
    required this.days,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,

      child: ListView.separated(

        scrollDirection: Axis.horizontal,

        itemCount: days.length,

        separatorBuilder: (_, __) =>
        const SizedBox(width: 14),

        itemBuilder: (_, index) {
          return DayItem(day: days[index]);
        },
      ),
    );
  }
}