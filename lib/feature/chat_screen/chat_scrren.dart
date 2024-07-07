import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final String image;

  const ChatScreen({Key? key, required this.name, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            SizedBox(width: 10),
            Text(name),
          ],
        ),
      ),
      body: ChatMessages(),
      bottomNavigationBar: ChatInput(),
    );
  }
}

class ChatMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This will be a placeholder for chat messages
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        Text('Chat messages go here...'),
      ],
    );
  }
}

class ChatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      color: Colors.grey[900],
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: 'Type a message...',
                hintStyle: TextStyle(color: Colors.white54),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.blue),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
