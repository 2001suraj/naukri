// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
Stack secondBody() {
    return Stack(
            children: [
              Container(
                width: double.infinity,
                height: 170,
                margin: EdgeInsets.symmetric(horizontal: 14),
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.lightBlueAccent.withOpacity(0.4),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                        image: AssetImage('assets/images/naukrifast.png'),
                        width: 90,
                        height: 40,
                        fit: BoxFit.contain),
                    Text(
                      " Want more callbacks from recuiters ? ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                        width: 256,
                        child: Text(
                          " Highlight your profile with premium services, increase callback chances by 3x",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              letterSpacing: 0.8),
                          maxLines: 2,
                          textAlign: TextAlign.start,
                        )),
                  ],
                ),
              ),
                Positioned(
                      bottom: 0,
                      right: 20,
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text('Highlight your profile'),
                            Icon(Icons.arrow_circle_right_sharp)
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                       right: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                  color: Colors.white,

                          border: Border.all(color: Colors.lightBlueAccent.withOpacity(0.4)),
                        ),
                         child: Text('Paid service', style:TextStyle(color:Colors.lightBlueAccent)),
                      ),
                    ),
            ],
          );
  }
