import 'package:flutter/material.dart';

class ContactClinicButton extends StatelessWidget {
  const ContactClinicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,

      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Color(0xff10C98E),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        onPressed: () {},

        child: const Text(
          "Contact Clinic",
          style: TextStyle(
            color: Color(0xff10C98E),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}