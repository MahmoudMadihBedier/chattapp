import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_pallet.dart';


class Authfield extends StatefulWidget {
  final TextInputType Typekeyboard;
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  const Authfield({super.key,
    required this.Typekeyboard,
    required this.hintText,
    required this.controller,
    this.isObscureText =false
  });

  @override
  State<Authfield> createState() => _AuthfieldState();
}

class _AuthfieldState extends State<Authfield> {
  bool hasText=false ;

  bool isFocused=false;

  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.Typekeyboard,
      focusNode: _focusNode,
      onChanged: (text){
        if(text.isNotEmpty){
          setState(() {
            hasText=true;
          });
        }else{
          setState(() {
            hasText=false;
          });
        }
      },

      controller: widget.controller,
      decoration: InputDecoration(
        prefixIcon: isFocused? Icon(Icons.verified): null,
        prefixIconColor: hasText?  AppPallete.gradient2: AppPallete.gradient3,
        hintText: widget.hintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter ${widget.hintText} is required';
        }
        return null;
      },
      obscureText: widget.isObscureText,

    );
  }
}

