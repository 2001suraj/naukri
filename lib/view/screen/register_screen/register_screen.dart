// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:naukri/provider/check_box_provider.dart';
import 'package:naukri/provider/eye_icon_provider.dart';
import 'package:naukri/view/screen/register_screen/components/build_body_textfield.dart';
import 'package:provider/provider.dart';





class RegisterScreen extends StatelessWidget {
   const RegisterScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
      CheckBoxProvider checkboxprovider = Provider.of<CheckBoxProvider>(context);
    EyeIconProvider eyeIconProvider = Provider.of<EyeIconProvider>(context);
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              //text
              ListTile(
                title: Text(
                  'Create your Naukri  Profile',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text('Search & apply  to jobs from job site',
                    style: TextStyle(color: Colors.grey)),
              ),
              SizedBox(height: 20),
              //  body text field
              BuildBodyTextField(eyeIconProvider),

              // buttons
          

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
    
  }
}