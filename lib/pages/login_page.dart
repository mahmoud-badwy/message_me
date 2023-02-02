import 'package:flutter/material.dart';
import 'package:message_me/pages/chat.dart';
import 'package:message_me/widgets/my_text_field.dart';
import 'package:message_me/widgets/mybutton.dart';

class LoginPage extends StatefulWidget {
  static String routename = 'signinscreen';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SignIn"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 180,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              const MyTextField(),
              const SizedBox(
                height: 10,
              ),
              const MyTextField2(),
              const SizedBox(
                height: 40,
              ),
              MyButton(
                  color: Colors.blue[800]!,
                  onPressed: () {
                    Navigator.pushNamed(context, ChatScreen.routename);
                  },
                  text: 'Sign in',
                  padding: 10)
            ],
          ),
        ),
      ),
    );
  }
}
