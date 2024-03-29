import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:message_me/view/welcome_page.dart';

class ChatScreen extends StatefulWidget {
  static String routename = 'chatscreen';

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late String messagetext;

  final _auth = FirebaseAuth.instance;
  late User signedInUser;

  @override
  void initState() {
    super.initState();
    getCurruntUser();
  }

  void getCurruntUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        print(signedInUser.email);
      }
    } catch (error) {
      print(error);
    }
  }

  // void getmessages() async {
  //   final messages = await _firestore.collection('messages').get();
  //   for (var message in messages.docs) {
  //     print(message.data());
  //   }
  // }

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
            onPressed: () async {
              try {
                await _auth.signOut();
                Navigator.pushNamed(context, WelcomePage.routename);
              } catch (e) {
                print(e);
              }
            },
            icon: const Icon(Icons.logout_rounded),
          ),
          IconButton(
            onPressed: () {
              // getmessages();
            },
            icon: const Icon(Icons.download),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(),
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
                      // await _firestore.collection("messages").add({
                      //   'text': messagetext,
                      //   'sender': signedInUser.email,
                      // });
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
