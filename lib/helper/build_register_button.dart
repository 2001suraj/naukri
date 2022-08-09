import 'package:flutter/material.dart';
import 'package:naukri/view/screen/register_screen/register_screen.dart';

  MaterialButton buidRegisterButton(BuildContext context) {
    return MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                color: Colors.orange,
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                },
                child: Text('Register for free'),
              );
  }