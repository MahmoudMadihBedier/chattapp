import 'package:chattapp/feature/homePage/widgites/chat_list.dart';
import 'package:chattapp/feature/homePage/widgites/custom_bottom_navegatin_bar.dart';
import 'package:chattapp/feature/homePage/widgites/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Header(),
                Expanded(child: ChatList()),
              ],
            ),
          ),
          bottomNavigationBar: CustomBottomNavigationBar(),
        );

  }
}
