import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';

class DoNotHaveAccountRowWidget extends StatelessWidget {
  const DoNotHaveAccountRowWidget({super.key, required this.haveAccount, required this.loginOrSignUp, this.onPressed});
  final String haveAccount;
  final String loginOrSignUp;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$haveAccount?",
          style: const TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
          "  $loginOrSignUp",
          style: const TextStyle(
            color: AppColors.lightBlue,
            fontWeight: FontWeight.w400,
            fontSize: 14
          ),
        ),
        )
      ],
    );
  }
}
