import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App!!!",
      theme: ThemeData(
        // Use Material 3 color scheme based on blue
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),

        // Explicitly set AppBar color to blue
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.white,
        ),

        // Explicitly set FAB color to blue
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: LoginPage(),
    );
  }
}

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
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
