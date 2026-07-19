import 'package:flutter/material.dart';

class LiveDoctorsList extends StatelessWidget {
  const LiveDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> doctors = [
      'assets/images/doctor1.png',
      'assets/images/doctor2.png',
      'assets/images/doctor3.png',
      // 'assets/images/doctor4.png',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Live Doctors',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          SizedBox(
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: doctors.length,
              separatorBuilder: (_, __) => const SizedBox(width: 15),
              itemBuilder: (context, index) {
                return LiveDoctorItem(
                  image: doctors[index],
                  isLive: index == 0 || index == 2,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LiveDoctorItem extends StatelessWidget {
  final String image;
  final bool isLive;

  const LiveDoctorItem({
    super.key,
    required this.image,
    required this.isLive,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.teal.shade100,
            child: CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(image),
            ),
          ),

          if (isLive)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'LIVE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}