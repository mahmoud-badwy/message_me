import 'package:flutter/material.dart';

import '../widgets/mybutton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 180,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: const Text(
                'MessageMe',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color(0xff2e386b),
                ),
              ),
            ),
            MyButton(
              text: 'Sign in',
              color: Colors.yellow[900]!,
              onPressed: () {
                Navigator.pushNamed(context, 'signin');
              },
              padding: 30,
            ),
            MyButton(
              text: 'Sign up',
              color: Colors.blue[800]!,
              onPressed: () {
                Navigator.pushNamed(context, 'signup');
              },
              padding: 0,
            )
          ],
        ),
      ),
    );
  }
}
