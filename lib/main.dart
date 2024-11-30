import 'package:chat_app/features/register/presentation/view/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/utilities/routes.dart';
import 'features/login/presentation/view/login_screen.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}
class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        Routes.registerScreen : (context)=> const RegisterScreen(),
        Routes.loginScreen : (context)=> const LoginScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: "LoginScreen",
    );
  }
}
