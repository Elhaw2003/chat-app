import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (p) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      decoration: InputDecoration(

        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.w500,
          fontSize: 14
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColors.white)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColors.white)
        )
      ),
    );
  }
}
