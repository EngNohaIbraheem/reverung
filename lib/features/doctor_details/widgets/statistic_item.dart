import 'package:flutter/material.dart';

class StatisticsItem extends StatelessWidget {
  final String number;
  final String title;

  const StatisticsItem({
    super.key,
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,

      decoration: BoxDecoration(
        color: const Color(0xffF8FCFF),
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            number,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            title,
            style: const TextStyle(
              color: Color(0xff677294),
            ),
          )
        ],
      ),
    );
  }
}