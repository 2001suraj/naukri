// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
Container logbuildSecondTopContainer() {
    return Container(
              width: double.infinity,
              height: 300,
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.all(30),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green,
                      offset: Offset(0, 2),
                      blurRadius: 2,
                    )
                  ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/file.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                             right: 0,
                            child: CircleAvatar(radius: 12, backgroundColor:Colors.blue, child:Center(child: Icon(Icons.add))))
                        ],
                      ),
                       SizedBox(height: 20),
                      SizedBox(
                         width:200,
                        child: Text(
                          'Help us recommend you the best jobs',
                           maxLines: 2,
                            textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                       SizedBox(height: 10),

                      Text(
                        'Tell us your  carrer perferences',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12),
                      ),
                       SizedBox(height: 10),

                      MaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text("Add preferred role",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]),
              ),
            );
  }