import 'package:flutter/material.dart';
import 'package:message_me/pages/chat.dart';
import 'package:message_me/widgets/my_text_field.dart';
import 'package:message_me/widgets/mybutton.dart';

class SignUpPage extends StatelessWidget {
  static String routename = 'signupscreen';

  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SignUp'),
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
                  text: 'Sign Up',
                  padding: 10)
            ],
          ),
        ),
      ),
    );
  }
}
