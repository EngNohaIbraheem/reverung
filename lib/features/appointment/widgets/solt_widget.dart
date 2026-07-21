class SlotsWidget extends StatelessWidget {

  final AppointmentDayModel day;

  const SlotsWidget({
    super.key,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Center(
          child: Text(
            day.date,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        SizedBox(height: 25),

        if(day.afternoonSlots.isNotEmpty)
          TimeSection(
            title:
            "Afternoon ${day.afternoonSlots.length} slots",
            slots: day.afternoonSlots,
          ),

        SizedBox(height: 25),

        if(day.eveningSlots.isNotEmpty)
          TimeSection(
            title:
            "Evening ${day.eveningSlots.length} slots",
            slots: day.eveningSlots,
          ),

      ],

    );

  }

}