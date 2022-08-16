// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naukri/view/screen/after_login_screen/drawer/drawer_screen.dart';

class LogAppliesScreen extends StatelessWidget {
  const LogAppliesScreen({Key? key}) : super(key: key);

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
            SizedBox(
                width: 240,
                child: Text(
                  'No recruiter actions on your applies in last 3 months ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                )),
                 SizedBox(height:10),
            Text(
              'Complete your profile to start applying to jobs  ',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey),
              textAlign: TextAlign.center,
            ),
                 SizedBox(height:10),

            MaterialButton(
              onPressed: () {},
              child: Text(" Complete profile now", style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white),),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
