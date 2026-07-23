import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final int index;
  final String title;

  const ServiceItem({
    super.key,
    required this.index,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text(
            "$index.",
            style: const TextStyle(
              color: Color(0xff10C98E),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xff677294),
                height: 1.5,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}