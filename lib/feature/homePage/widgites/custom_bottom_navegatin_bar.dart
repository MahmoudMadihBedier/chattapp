import 'package:chattapp/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
   int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation:20,
      currentIndex: _currentIndex,
      enableFeedback: true,

      onTap: (index) {
        setState(() {
          _currentIndex = index;
          print(_currentIndex);
        });
      },

      backgroundColor: AppPallete.transparentColor,
      items: const [
        BottomNavigationBarItem(

          icon: Icon(Icons.call, color: Colors.grey),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt, color: AppPallete.borderColor),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message, color: AppPallete.errorColor),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people, color: Colors.grey),
          label: '',

        ),
      ],

      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppPallete.gradient1,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );
  }
}