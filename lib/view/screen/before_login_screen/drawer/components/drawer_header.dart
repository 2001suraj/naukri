// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naukri/view/screen/register_screen/register_screen.dart';

import '../../login_screen/login_screen.dart';
 Container buildHeader(BuildContext context) {
    return Container(
        height: 150,
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/images/user.png'),
            ),
            title: Text('BuildYour Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            subtitle: Text('Job opportunities waiting for you at Naukri'),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 120,
                height: 40,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));

                },
                child: Text('Login', style: TextStyle(color: Colors.blue)),
              ),
              MaterialButton(
                minWidth: 120,
                height: 40,
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));

                },
                child: Text('Register', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ]));
  }