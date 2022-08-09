// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:naukri/helper/build_register_button.dart';
import 'package:naukri/helper/buildlogintextbutton.dart';
import 'package:naukri/view/screen/before_login_screen/drawer/drawer_screen.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: DrawerScreen(),
      body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // image
              Container(
                height: 210,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/user1.png'),
                  ),
                ),
              ),
              // text

              SizedBox(
                width: 330,
                child: Text(
                  " Here is where recruiters directly each you for jobs",
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //subtext

              SizedBox(
                width: 270,
                child: Text(
                  "keep your profile updated to help recruiters discover you for relevant roles ",
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              

              //  register for free button
              buidRegisterButton(context),
                SizedBox(
                  height: 20,
                ),

                // text and button note : Already have an account? Login
                buildLoginText(context),
              
            ],
          ),
        )
    );
  }
}
