import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../../generated/assets.dart';

class ChatAppbarWidget extends StatelessWidget {
  const ChatAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: AppColors.primaryColor,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.imagesLogoImage,
            color: AppColors.white,
            width: 55,
            height: 55,
          ),
           const SizedBox(width: 10,),
           const Text(
              AppTexts.chat,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: AppColors.white
            ),
          )
        ],
      ),
    );
  }
}
