import 'package:flutter/material.dart';

class CommentInput extends StatelessWidget {
  const CommentInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [

          const SizedBox(width: 8),

          Container(
            width: 44,
            height: 44,
            decoration: const BoxDecoration(
              color: Color(0xff19C37D),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.chat_bubble_outline,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 14),

          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Add a Comment......",
                border: InputBorder.none,
              ),
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sentiment_satisfied_alt,
              color: Colors.grey,
            ),
          ),

          const SizedBox(width: 10),
        ],
      ),
    );
  }
}