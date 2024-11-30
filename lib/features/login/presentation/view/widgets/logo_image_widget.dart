import 'package:chat_app/generated/assets.dart';
import 'package:flutter/material.dart';

class LogoImageWidget extends StatelessWidget {
  const LogoImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.imagesLogoImage,
      width: 150,
      height: 150,
    );
  }
}
