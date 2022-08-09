import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/eye_icon_provider.dart';

class buildPasswordTextField extends StatefulWidget {
  buildPasswordTextField({
    Key? key,
     required this.obscureText,
    required this.controller,
    required this.hintText,
  }) : super(key: key);
   

  final TextEditingController controller;
  String hintText;
bool obscureText;
  @override
  State<buildPasswordTextField> createState() => _buildPasswordTextFieldState();
}

class _buildPasswordTextFieldState extends State<buildPasswordTextField> {

  @override
  Widget build(BuildContext context) {
    EyeIconProvider eyeIconProvider = Provider.of<EyeIconProvider>(context);
    return TextField(
      controller: widget.controller,
       obscureText: widget.obscureText,
      decoration: InputDecoration(
        labelText: widget.hintText,
        suffixIcon: 
             IconButton(
                icon: eyeIconProvider.ischeck == true
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
                onPressed: eyeIconProvider.onchange),
      ),
    );
  }
}
