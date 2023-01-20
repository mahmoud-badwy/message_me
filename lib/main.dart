import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:message_me/pages/welcome_page.dart';
import 'firebase_options.dart';


void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const WelcomePage();
  }
}

