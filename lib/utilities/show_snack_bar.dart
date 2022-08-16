import 'package:flutter/material.dart';
 showSnackBar(String text, BuildContext context,{required MaterialColor color} ){
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text),backgroundColor: color,));
 }