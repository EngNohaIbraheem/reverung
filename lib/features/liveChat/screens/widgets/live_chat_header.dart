import 'package:flutter/material.dart';

class LiveChatHeader extends StatelessWidget {
  const LiveChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          const CircleAvatar(
            radius: 20,
            backgroundImage:
            AssetImage("assets/images/profile.jpg"),
          )
        ],
      ),
    );
  }
}