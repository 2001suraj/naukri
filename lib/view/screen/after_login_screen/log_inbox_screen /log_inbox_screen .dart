// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:naukri/view/screen/after_login_screen/drawer/drawer_screen.dart';
import 'package:naukri/view/screen/after_login_screen/log_inbox_screen%20/components/first_body.dart';
import 'package:naukri/view/screen/after_login_screen/log_inbox_screen%20/components/second_body.dart';

class LogInboxScreen extends StatelessWidget {
  const LogInboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
      ),
      drawer: LogDrawerScreen(),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //first body
            firstBody(),

        
            SizedBox(height: 50),
            //callbacks container
            //second body

            secondBody(),
          ],
        ),
      ),
    );
  }

  
}
