import 'package:flutter/material.dart';
import 'chat_item.dart';

class ChatList extends StatelessWidget {
  final List<Map<String, dynamic>> chatData = [
    {
      'name': 'Janet Fowler',
      'message': 'I’m going to San Francisco ...',
      'time': 'now',
      'isOnline': true,
      'image': 'assets/Users/user4.jpg'
    },
    {
      'name': 'Jason Boyd',
      'message': 'Sound goods.',
      'time': '16:00',
      'isOnline': false,
      'image': 'assets/Users/User1.jpg'
    },
    {
      'name': 'Nicholas Dunn',
      'message': 'See you there!',
      'time': '09:10',
      'isOnline': false,
      'image': 'assets/Users/user2.jpg'
    },
    {
      'name': 'Carol Clark',
      'message': 'You sent a sticker.',
      'time': 'Mon',
      'isOnline': true,
      'image': 'assets/Users/user3.jpg'
    },
    {
      'name': 'Ann Carroll',
      'message': 'Dinner tonight?',
      'time': 'Mon',
      'isOnline': false,
      'image': 'assets/Users/user4.jpg'
    },
    {
      'name': 'Jeffrey Lawrence',
      'message': 'Thats works for me',
      'time': 'Mon',
      'isOnline': false,
      'image': 'assets/Users/user5.jpg'
    },
    {
      'name': 'Janet Fowler',
      'message': 'I’m going to San Francisco ...',
      'time': 'now',
      'isOnline': true,
      'image': 'assets/Users/user4.jpg'
    },
    {
      'name': 'Jason Boyd',
      'message': 'Sound goods.',
      'time': '16:00',
      'isOnline': false,
      'image': 'assets/Users/User1.jpg'
    },
    {
      'name': 'Nicholas Dunn',
      'message': 'See you there!',
      'time': '09:10',
      'isOnline': false,
      'image': 'assets/Users/user2.jpg'
    },
    {
      'name': 'Carol Clark',
      'message': 'You sent a sticker.',
      'time': 'Mon',
      'isOnline': true,
      'image': 'assets/Users/user3.jpg'
    },
    {
      'name': 'Ann Carroll',
      'message': 'Dinner tonight?',
      'time': 'Mon',
      'isOnline': false,
      'image': 'assets/Users/user4.jpg'
    },
    {
      'name': 'Jeffrey Lawrence',
      'message': 'Thats works for me',
      'time': 'Mon',
      'isOnline': false,
      'image': 'assets/Users/user5.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (context, index) {
        return ChatItem(
          name: chatData[index]['name'],
          message: chatData[index]['message'],
          time: chatData[index]['time'],
          isOnline: chatData[index]['isOnline'],
          image: chatData[index]['image'],
        );
      },
    );
  }
}
