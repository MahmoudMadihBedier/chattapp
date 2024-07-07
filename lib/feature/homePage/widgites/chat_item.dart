import 'package:flutter/material.dart';

import '../../chat_screen/chat_scrren.dart';
class ChatItem extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final bool isOnline;
  final String image;

  const ChatItem({
    Key? key,
    required this.name,
    required this.message,
    required this.time,
    required this.isOnline,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(name: name, image: image),
          ),
        );
      },
      child: ListTile(
        leading: Stack(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 25,
            ),
            if (isOnline)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                ),
              ),
          ],
        ),
        title: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          message,
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              time,
              style: TextStyle(color: Colors.grey),
            ),
            if (time == 'now')
              Icon(
                Icons.circle,
                color: Colors.blue,
                size: 12,
              ),
          ],
        ),
      ),
    );
  }
}