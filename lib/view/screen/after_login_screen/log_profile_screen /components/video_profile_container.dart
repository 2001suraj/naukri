// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naukri/helper/top_row_button.dart';
Container videoProfileContainer() {
    return Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  topRowbutton(title:'Video profile',tap: (){},buttontitle: 'Record'),
                  SizedBox(
                    height: 110,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image(
                            image: AssetImage(
                              'assets/images/videoimage.jpg',
                            ),
                            
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Text(
                                'Impress recruiters with a  free video profile !',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                
                                
                              ),
                               SizedBox(height: 10),
                               Text(
                                'Show recuiters why your personality & skill make you the best candidate',
                                style: TextStyle(
                                   color:Colors.blueGrey,
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }

