import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Let\'s sign you in!',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold, letterSpacing: 0.5
              ),
            ),
            Text(
              'Welcome back! \nYou\'ve been missed!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5
              ),
            ),
            Image.network('https://img.itch.zone/aW1nLzU2MTA3NTUucG5n/original/tcdxAa.png',
            height: 200,
            ),
          ],
        ),
      ),
    );
  }
}