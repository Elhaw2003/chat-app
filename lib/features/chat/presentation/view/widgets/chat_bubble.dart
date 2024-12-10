import 'package:chat_app/core/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 10),
      // alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(
        bottom: 25,
        top: 25,
        left: 15,
        right: 30
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: AppColors.primaryColor,
      ),
      child: const Text(
          "datadatadatadatadata",
        style: TextStyle(
          color: AppColors.white
        ),
      ),
    );
  }
}
