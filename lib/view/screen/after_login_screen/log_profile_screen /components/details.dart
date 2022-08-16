// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
 Container Details({container,container1, height,conheight}) {
    return Container(
            width: double.infinity,
            height: conheight == true ? height:130,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: EdgeInsets.only(left:12, top: 15),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                container,
               container1,
                
              ],
            ),
          );
  }