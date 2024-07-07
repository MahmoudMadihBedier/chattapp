import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_pallet.dart';


class AppTheme {
  static OutlineInputBorder _border(
      [Color color = AppPallete.borderColor]) => OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: 3,
    ),
    borderRadius: const BorderRadius.all(Radius.circular(20)),
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
      iconTheme: const IconThemeData(
        color: AppPallete.gradient2,
      ),
    ),
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient1),
    ),
  );
}