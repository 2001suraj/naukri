// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naukri/utilities/dummy.dart';
Container buildMissingdetails() {
    return Container(
                width: double.infinity,
                height: 250,
                margin: EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 13,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 170,
                      color: Colors.lightBlueAccent.withOpacity(0.2),
                      child: Container(
                          margin:
                              EdgeInsets.only(left: 20, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                             border:  Border.all(color:Colors.black),
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Dummy_Data.mcolor[index]
                                        .withOpacity(0.2),
                                    child: Icon(
                                      Dummy_Data.icons[index],
                                      color: Dummy_Data.mcolor[index],
                                    ),
                                  ),
                                  Text(
                                    Dummy_Data.info[index],
                                    maxLines: 2,
                                     textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  MaterialButton(
                                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                      color: Colors.lightBlueAccent.withOpacity(0.08),
                                       elevation: 0,
                                    onPressed: () {},
                                    child: Text(
                                      Dummy_Data.btnText[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 39, 76, 176)),
                                    ),
                                  ),
                                ],
                              ),
                               Positioned (
                                 right: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.arrow_upward_sharp,color: Colors.green,size: 10),
                                      Text(Dummy_Data.progress[index], style: TextStyle(color:Colors.green, fontSize: 10),),
                                    ],
                                  ),
                                ),
                               ),
                            ],
                          )),
                    );
                  },
                ));
  }