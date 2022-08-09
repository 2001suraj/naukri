// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';

import 'package:naukri/view/screen/before_login_screen/drawer/components/drawer_body.dart';
import 'package:naukri/view/screen/before_login_screen/drawer/components/drawer_header.dart';


class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
          child: SingleChildScrollView(
            primary:false,
            physics: BouncingScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
            children: [
              // view drawer component
             
              buildHeader(context),
              Divider(),
              buildBody(),
            ],
                ),
              ),
          )),
    );
  }
 
}

