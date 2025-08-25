import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  Widget getChatBubble(alignment, message){
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$message',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),
            ),
            Image.network(
              'https://img.itch.zone/aW1nLzU2MTA3NTUucG5n/original/tcdxAa.png',
              height: 200,
            )
          ],
        ),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            )
        ),
      ),
    );
  }

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
                getChatBubble(Alignment.centerLeft, 'Hello, this is Asiri!'),
                getChatBubble(Alignment.centerRight, 'Hi!!'),
            
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