import 'package:chat_app/core/utilities/go_routes_generator.dart';
import 'package:chat_app/core/utilities/routes.dart';
import 'package:chat_app/core/widgets/custom_botton.dart';
import 'package:chat_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_texts.dart';
import '../../../../login/presentation/view/widgets/dont_have_account_row_widget.dart';
import 'logo_image_widget.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const Center(child: Padding(
            padding: EdgeInsets.only(
              top: 50
            ),
            child: LogoImageWidget(),
          )),
          const Center(
            child: Text(
              AppTexts.scholarChat,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 19,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          const SizedBox(height: 100,),
          const Text(
            AppTexts.signUp,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 19,
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 15,),
          const CustomTextField(hintText: AppTexts.email),
          const SizedBox(height: 10,),
          const CustomTextField(hintText: AppTexts.password),
          const SizedBox(height: 20,),
           CustomButton(
            onTap: (){
              context.pushNamed(AppRoutes.chatScreen);
            },
              title: AppTexts.signUp
          ),
          const SizedBox(height: 20,),
          DoNotHaveAccountRowWidget(
            haveAccount: AppTexts.alreadyHaveAccount,
            loginOrSignUp: AppTexts.login,
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}