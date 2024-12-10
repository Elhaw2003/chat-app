import 'package:chat_app/features/chat/presentation/view/widgets/chat_appbar_widget.dart';
import 'package:chat_app/features/chat/presentation/view/widgets/chat_body.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const ChatAppbarWidget(),
      ),
      body: const ChatBody(),
    );
  }
}
