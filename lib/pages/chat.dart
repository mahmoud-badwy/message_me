import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static String routename = 'chatscreen';

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('MessageME')
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
    );
  }
}
