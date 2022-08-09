import 'package:flutter/material.dart';

class buildTextField extends StatelessWidget {
  final TextEditingController controller;
  String hintText;

  TextInputType textInputType;
  buildTextField(
      {required this.controller,
      required this.hintText,
      required this.textInputType,
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: hintText,
      ),
    );
  }
}
