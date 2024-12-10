import 'package:chat_app/core/utilities/routes.dart';
import 'package:chat_app/features/chat/presentation/view/chat_screen.dart';
import 'package:chat_app/features/login/presentation/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/register/presentation/view/register_screen.dart';

class RouterGenerator{
  static GoRouter mainRoutingInOurApp = GoRouter(
      errorBuilder: (context, state) => const Scaffold(body: Center(child: Text("No Route Found"),),),
      initialLocation: AppRoutes.loginScreen,
      routes: [
        GoRoute(
          path: AppRoutes.loginScreen,
          name: AppRoutes.loginScreen,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: AppRoutes.registerScreen,
          name: AppRoutes.registerScreen,
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          path: AppRoutes.chatScreen,
          name: AppRoutes.chatScreen,
          builder: (context, state) => const ChatScreen(),
        ),
      ]
  );
}