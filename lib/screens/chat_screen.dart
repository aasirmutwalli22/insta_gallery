import 'package:flutter/material.dart';
import 'package:insta_gallery/components/message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => MessageBubble(
          message: index.toString(),
          outgoingMessage: index % 2 == 0,
        ),
      ),
    );
  }
}
