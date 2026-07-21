import 'package:flutter/material.dart';

import '../data/appointment_dummy_data.dart';
import '../widgets/availability_section.dart';
import '../widgets/contact_clinic_button.dart';
import '../widgets/day_selector.dart';
import '../widgets/doctor_info_card.dart';
import '../widgets/next_available_button.dart';

class SelectTimeScreen extends StatelessWidget {
  const SelectTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FCFF),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const CustomAppBar(
                title: "Select Time",
              ),

              const SizedBox(height: 20),

              DoctorInfoCard(
                doctor: doctor,
              ),

              const SizedBox(height: 25),

              DaySelector(
                days: appointmentDays,
              ),

              const SizedBox(height: 30),

              const AvailabilitySection(),

              const Spacer(),

              const NextAvailableButton(),

              const SizedBox(height: 18),

              const Center(
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              const ContactClinicButton(),

              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import '../data/appointment_dummy_data.dart';
// import '../widgets/contact_clinic_button.dart';
// import '../widgets/custom_app_bar.dart';
// import '../widgets/day_selector.dart';
// import '../widgets/doctor_info_card.dart';
// import '../widgets/next_available_button.dart';
// import '../widgets/time_section.dart';
//
// class SelectTimeScreen extends StatefulWidget {
//   const SelectTimeScreen({super.key});
//
//   @override
//   State<SelectTimeScreen> createState() => _SelectTimeScreenState();
// }
//
// class _SelectTimeScreenState extends State<SelectTimeScreen> {
//   int selectedDayIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     final selectedDay = appointmentDays[selectedDayIndex];
//
//     return Scaffold(
//       backgroundColor: const Color(0xffF8FCFF),
//
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//
//               const CustomAppBar(
//                 title: "Select Time",
//               ),
//
//               const SizedBox(height: 20),
//
//               DoctorInfoCard(
//                 doctor: doctor,
//               ),
//
//               const SizedBox(height: 25),
//
//               DaySelector(
//                 days: appointmentDays,
//                 selectedIndex: selectedDayIndex,
//                 onSelected: (index) {
//                   setState(() {
//                     selectedDayIndex = index;
//                   });
//                 },
//               ),
//
//               const SizedBox(height: 30),
//
//               Center(
//                 child: Text(
//                   selectedDay.date,
//                   style: const TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//
//               const SizedBox(height: 30),
//
//               if (!selectedDay.hasSlots)
//                 _buildNoSlots()
//               else
//                 _buildAvailableSlots(selectedDay),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildNoSlots() {
//     return Column(
//       children: [
//
//         const Text(
//           "No slots available",
//           style: TextStyle(
//             color: Colors.grey,
//             fontSize: 18,
//           ),
//         ),
//
//         const SizedBox(height: 30),
//
//         const NextAvailableButton(),
//
//         const SizedBox(height: 20),
//
//         const Center(
//           child: Text(
//             "OR",
//             style: TextStyle(
//               color: Colors.grey,
//               fontSize: 18,
//             ),
//           ),
//         ),
//
//         const SizedBox(height: 20),
//
//         const ContactClinicButton(),
//       ],
//     );
//   }
//
//   Widget _buildAvailableSlots(day) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//
//         if (day.afternoonSlots.isNotEmpty)
//           TimeSection(
//             title:
//             "Afternoon ${day.afternoonSlots.length} slots",
//             slots: day.afternoonSlots,
//           ),
//
//         const SizedBox(height: 30),
//
//         if (day.eveningSlots.isNotEmpty)
//           TimeSection(
//             title:
//             "Evening ${day.eveningSlots.length} slots",
//             slots: day.eveningSlots,
//           ),
//       ],
//     );
//   }
// }