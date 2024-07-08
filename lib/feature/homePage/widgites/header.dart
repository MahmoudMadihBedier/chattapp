import 'package:chattapp/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.edit, color: AppPallete.gradient1),
          Text(
            '1 new message',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Icon(Icons.search, color: AppPallete.gradient1),
        ],
      ),
    );
  }
}