// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naukri/helper/build_register_button.dart';
import 'package:naukri/helper/buildlogintextbutton.dart';
import 'package:naukri/view/screen/before_login_screen/drawer/drawer_screen.dart';
import 'package:naukri/view/screen/before_login_screen/profileScreen/component/build_image_container.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: DrawerScreen(),
        body: SingleChildScrollView(
          child: Container(
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
                    " Get discovered by recruiters from top companies",
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // row to image from /view/screen/profileScreen/ component/ 
                buildImageContainer(),

                //subtext

                SizedBox(
                  width: 270,
                  child: Text(
                    " + 700 more",
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
          ),
        ));
  }

 



}
