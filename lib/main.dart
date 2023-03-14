import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:message_me/view/screens/login_page.dart';
import 'package:message_me/view/screens/signup.dart';
import 'package:message_me/view/screens/chat.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.routename,
      routes: {
        LoginPage.routename: (context) => const LoginPage(),
        SignUpPage.routename: (context) => const SignUpPage(),
        ChatScreen.routename: (context) => const ChatScreen(),
      },
    );
  }
}
