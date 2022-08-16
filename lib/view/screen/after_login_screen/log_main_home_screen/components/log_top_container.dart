// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
 Container logbuildTopContainer(BuildContext context) {
    return Container(
              width: double.infinity,
              height: 300,
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    color: Color.fromARGB(255, 238, 173, 31),
                  ),
                  Positioned(
                     top: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.only(left: 10, top: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 230,
                        decoration: BoxDecoration(
                           border:  Border.all(color:Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                           boxShadow: [ BoxShadow(
                            color: Colors.black,
                            offset: Offset(0,2),
                            blurRadius: 2,
                           )],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // image container

                            
                            Container(
                        margin: EdgeInsets.only( top: 20),
                              
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/user.png'),
                                    fit: BoxFit.contain),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("What are you missing out ?",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  buildCustomRow(
                                      text:
                                          'Daily job recommendations for you'),
                                  buildCustomRow(
                                      text:
                                          'Track applications and stay updated'),
                                  buildCustomRow(
                                      text:
                                          'Recruiters reaching directly for job roles'),
                                  MaterialButton(
                                    onPressed: () {},
                                     padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                      color:Colors.blue,
                                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular( 20)),
                                    child: Text("Complete profile",style: TextStyle(
                                          fontSize: 18,
                                           color:Colors.white,
                                          fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            );
  }

  Row buildCustomRow({text}) {
    return Row(
      children: [
        Icon(
          Icons.check_circle,
          color: Colors.red,
          size: 16,
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(fontSize: 12),
          maxLines: 1,
        ),
      ],
    );
  }