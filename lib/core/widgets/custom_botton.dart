import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.primaryColor,
            fontSize: 19,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
