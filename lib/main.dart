import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:message_me/pages/login_page.dart';
import 'package:message_me/pages/signup.dart';
import 'package:message_me/pages/welcome_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => const WelcomePage(),
        'signin': (context) => const LoginPage(),
        'signup': (context) => const SignUpPage(),
      },
    );
  }
}
