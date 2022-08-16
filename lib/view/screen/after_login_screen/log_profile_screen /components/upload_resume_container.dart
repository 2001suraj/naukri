// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
 Container uploadResumeContainer(BuildContext context) {
    return Container(
                width: double.infinity,
                height: 200,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.yellowAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        primary: false,
                        physics: BouncingScrollPhysics(),
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //image
                              Image(
                                  image: AssetImage('assets/images/file.png'),
                                  width: 40,
                                  height: 40),

                              //text and buttons in row
                              SizedBox(
                                height: 80,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.57,
                                          child: Text(
                                            "70% of recruiters discover candidates through resume ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Text(
                                              "Upload Resume from here ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              size: 15,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    resumeUploadContainer(
                                        image: 'filemanager1',
                                        text: 'Mobile'),
                                    resumeUploadContainer(
                                        image: 'drive', text: 'Drive'),
                                    resumeUploadContainer(
                                        image: 'mail', text: 'Email'),
                                  ],
                                ),
                              ),

                              //note
                            ],
                          )
                        ],
                      ),
                    ),
                     SizedBox(height: 10),
                    Text(
                      'Format: DOC, DOCx, PDF, RTF | maximum file size : 2 MB',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 11,
                         fontWeight:  FontWeight.bold
                      ),
                    ),
                  ],
                ));
  }

  Container resumeUploadContainer({required image, required text}) {
    return Container(
      height: 75,
      width: 70,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blueGrey),
      ),
      child: Column(
        children: [
          Image(
              image: AssetImage('assets/images/$image.png'),
              width: 40,
              height: 40),
          Text(
            text,
            style: TextStyle(
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }