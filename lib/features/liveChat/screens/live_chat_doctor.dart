import 'package:flutter/material.dart';

import '../widgets/chat_list.dart';
import '../widgets/comment_input.dart';
import '../widgets/live_chat_header.dart';

class DoctorLiveChatScreen extends StatelessWidget {
  const DoctorLiveChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [

          /// Background Image
          DoctorBackground(),

          /// Gradient
          BackgroundGradient(),

          /// Header
          SafeArea(
            child: LiveChatHeader(),
          ),

          /// Messages
          Positioned(
            left: 20,
            right: 20,
            bottom: 90,
            child: ChatList(),
          ),

          /// Input
          Positioned(
            left: 20,
            right: 20,
            bottom: 25,
            child: CommentInput(),
          )
        ],
      ),
    );
  }
}