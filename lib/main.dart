import 'package:flutter/material.dart';
import 'core/utilities/go_routes_generator.dart';



void main(){
  runApp(const ChatApp());
}
class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp.router(
      routerConfig: RouterGenerator.mainRoutingInOurApp,
      debugShowCheckedModeBanner: false,
    );
  }
}
