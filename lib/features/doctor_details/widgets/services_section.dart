import 'package:flutter/material.dart';

import 'service_item.dart';

class ServicesSection extends StatelessWidget {
  final List<String> services;

  const ServicesSection({
    super.key,
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "Services",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        ListView.separated(

          shrinkWrap: true,

          physics: const NeverScrollableScrollPhysics(),

          itemCount: services.length,

          separatorBuilder: (_, __) => const Divider(),

          itemBuilder: (_, index) {

            return ServiceItem(
              index: index + 1,
              title: services[index],
            );

          },
        ),
      ],
    );
  }
}