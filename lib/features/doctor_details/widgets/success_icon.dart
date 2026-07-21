import 'package:flutter/material.dart';

class SuccessIcon extends StatelessWidget {
  const SuccessIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: const BoxDecoration(
        color: Color(0xffEAF9F3),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.thumb_up_alt_rounded,
        color: Color(0xff10C98E),
        size: 90,
      ),
    );
  }
}