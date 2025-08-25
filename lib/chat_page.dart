import 'package:chat_app/login_page.dart';
import 'package:chat_app/widgets/chat_bubble.dart' show ChatBubble;
import 'package:chat_app/widgets/chat_input.dart' show ChatInput;
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
            'Hi Asiri!',
            style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: (){
            print('Icon pressed');
          },
              icon: Icon(Icons.logout))
        ],

      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                ChatBubble(
                    alignment: Alignment.centerLeft,
                    message: 'Hello, this is Asiri!'
                ),
                ChatBubble(
                    alignment: Alignment.centerLeft,
                    message: 'Hi!!'
                ),
            
              ],
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}