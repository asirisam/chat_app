import 'package:chat_app/login_page.dart';
import 'package:chat_app/widgets/chat_bubble.dart' show ChatBubble;
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
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))
            ),
          )
        ],
      ),
    );
  }
}