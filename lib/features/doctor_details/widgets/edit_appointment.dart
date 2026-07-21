import 'package:flutter/material.dart';

class EditAppointmentButton extends StatelessWidget {
  final VoidCallback onPressed;

  const EditAppointmentButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: const Text(
        "Edit your appointment",
        style: TextStyle(
          fontSize: 18,
          color: Color(0xff677294),
        ),
      ),
    );
  }
}