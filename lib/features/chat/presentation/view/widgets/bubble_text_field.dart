import 'package:chat_app/core/utilities/app_colors.dart';
import 'package:chat_app/core/utilities/app_texts.dart';
import 'package:flutter/material.dart';

class BubbleTextField extends StatelessWidget {
  const BubbleTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w300,
          fontSize: 15
        ),
        hintText: AppTexts.sendMessage,
        suffixIcon: const Icon(
          color: AppColors.primaryColor,
            Icons.send
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: AppColors.lightBlue)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: AppColors.primaryColor)
        )
      ),
    );
  }
}
