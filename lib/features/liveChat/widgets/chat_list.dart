import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import 'chat_item.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: chats.length,
      separatorBuilder: (_, __) =>
      const SizedBox(height: 18),
      itemBuilder: (_, index) {
        return ChatItem(chat: chats[index]);
      },
    );
  }
}