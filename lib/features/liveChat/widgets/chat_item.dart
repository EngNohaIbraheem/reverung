import 'package:flutter/material.dart';

import '../models/chat_model.dart';

class ChatItem extends StatelessWidget {
  final ChatModel chat;

  const ChatItem({
    super.key,
    required this.chat,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage(chat.image),
        ),

        const SizedBox(width: 14),

        Expanded(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [

              Text(
                chat.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 3),

              Text(
                chat.message,
                style: TextStyle(
                  color: Colors.white.withOpacity(.85),
                  fontSize: 15,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}