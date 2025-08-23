import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat App'),
      ),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Button clicked');
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
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
          Container(
            height: 150,
            width: 150,
            //child: FlutterLogo(),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                      'https://img.itch.zone/aW1nLzU2MTA3NTUucG5n/original/tcdxAa.png'
                  ),
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(24)
            ),
          )
        ],
      ),
    );
  }
}