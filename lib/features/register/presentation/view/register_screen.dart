import 'package:chat_app/features/register/presentation/view/widgets/register_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: RegisterBody()
    );
  }
}