import 'package:chat_app/features/chat/presentation/view/widgets/bubble_text_field.dart';
import 'package:chat_app/features/chat/presentation/view/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                    child: ChatBubble()
                ),
                Align(
                  alignment: Alignment.centerLeft,
                    child: ChatBubble()
                ),
              ],
            ),
          ),
          const BubbleTextField()
        ],
      ),
    );
  }
}
