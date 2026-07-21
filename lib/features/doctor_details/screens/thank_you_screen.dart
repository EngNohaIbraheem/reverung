import 'package:flutter/material.dart';

import '../widgets/done_button.dart';
import '../widgets/edit_appointment_button.dart';
import '../widgets/success_icon.dart';

class ThankYouScreen extends StatelessWidget {
  final String doctorName;
  final String date;
  final String time;

  const ThankYouScreen({
    super.key,
    required this.doctorName,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FCFF),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),

          child: Column(
            children: [

              const Spacer(),

              const SuccessIcon(),

              const SizedBox(height: 40),

              const Text(
                "Thank You !",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff222222),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Your Appointment Successful",
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff677294),
                ),
              ),

              const SizedBox(height: 30),

              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: const TextStyle(
                    color: Color(0xff677294),
                    fontSize: 18,
                    height: 1.6,
                  ),
                  children: [

                    const TextSpan(
                      text: "You booked an appointment with ",
                    ),

                    TextSpan(
                      text: doctorName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    const TextSpan(
                      text: " on ",
                    ),

                    TextSpan(
                      text: date,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    const TextSpan(
                      text: " at ",
                    ),

                    TextSpan(
                      text: time,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              DoneButton(
                onPressed: () {
                  Navigator.popUntil(
                    context,
                        (route) => route.isFirst,
                  );
                },
              ),

              const SizedBox(height: 20),

              EditAppointmentButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}