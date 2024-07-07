import 'package:chattapp/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
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
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}