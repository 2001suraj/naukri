// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
  Container basicDetailsContainer() {
    return Container(
              height: 250,
              width: double.infinity,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // basic details
                    
                      Text(
                        "Basic details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(Icons.edit, color: Colors.blue),
                    ],
                  ),
                  SizedBox(height: 20),

                  //freshers

                  buildIconButtonWithText(
                      icons: Icons.business_center_rounded,
                      title: "Fresher",
                      colors: Colors.black,
                      fweight: FontWeight.normal),

                      //add location
                  buildIconButtonWithText(
                      icons: Icons.location_on_outlined,
                      title: "Add Location",
                      colors: Colors.blue,
                      fweight: FontWeight.bold),

                      //email with check icon
                  SizedBox(
                    width: 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buildIconButtonWithText(
                          icons: Icons.location_on_outlined,
                          title: "Ramharithapa@gmail.com",
                          colors: Colors.black,
                          fweight: FontWeight.normal,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.greenAccent,
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                             size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // add phone number
                           buildIconButtonWithText(
                      icons: Icons.phone,
                      title: "Add Phone",
                      colors: Colors.blue,
                      fweight: FontWeight.bold),
                ],
              ),
            );
  }

  SizedBox buildIconButtonWithText({
    required icons,
    required title,
    required fweight,
    required colors,
  }) {
    return SizedBox(
      width: 240,
      height: 40,
      child: IconButton(
        onPressed: () {},
        icon: Row(
          children: [
            Icon(icons, color:Colors.grey),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: fweight, color: colors),
            ),
          ],
        ),
      ),
    );
  }