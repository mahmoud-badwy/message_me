import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static String routename = 'chatscreen';

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late String messagetext;
  List<Widget> mlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('MessageME')
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('Logout succesful');
            },
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SingleChildScrollView(
              child: Column(
                children: mlist,
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 2, color: Colors.orange),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) {
                        messagetext = value;
                      },
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        hintText: 'write your message...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (messagetext == null) {
                          mlist.add(Text(messagetext));
                        } else {
                          print('null');
                        }
                      });
                    },
                    child: Text(
                      'send',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900]!,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
