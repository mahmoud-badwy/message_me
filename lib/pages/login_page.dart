import 'package:flutter/material.dart';
import 'package:message_me/pages/chat.dart';
import 'package:message_me/widgets/mybutton.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Dataf {
  bool obscure = true;
  var icon = Icons.visibility;
}

class LoginPage extends StatefulWidget {
  static String routename = 'signinscreen';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String password;
  Dataf data = Dataf();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
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
              //1
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'email',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //2
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: data.obscure,
                decoration: InputDecoration(
                  hintText: 'password',
                  suffixIcon: IconButton(
                    icon: Icon(data.icon),
                    onPressed: () {
                      if (data.obscure) {
                        setState(() {
                          data.obscure = false;
                          data.icon = Icons.visibility_off;
                        });
                      } else {
                        setState(() {
                          data.obscure = true;
                          data.icon = Icons.visibility;
                        });
                      }
                    },
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.orange,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MyButton(
                  color: Colors.yellow[900]!,
                  onPressed: () async {
                    try {
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      Navigator.pushNamed(context, ChatScreen.routename);
                    } catch (e) {
                      print(e);
                    }
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
