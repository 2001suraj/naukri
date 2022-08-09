// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naukri/view/screen/before_login_screen/drawer/drawer_screen.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/components/appbar.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/components/firstcontainer.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/components/fourthContainer.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/components/secondContainer.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/components/thirdContainer.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(230, 255, 255, 255),
      appBar: buildAppBar(),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            buildFirstContainer(context),
            SizedBox(
              height: 15,
            ),
            buildSecondContainer(context),
            SizedBox(
              height: 15,
            ),
          
        
                  buildThirdContainer(),
                 
              buildfouthContainer(),
              
           
          ],
        ),
      ),
    );
  }

  
}
