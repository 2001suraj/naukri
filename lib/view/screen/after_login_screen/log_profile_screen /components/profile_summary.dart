import 'package:flutter/material.dart';
import 'package:naukri/helper/top_row_button.dart';
Container profileSummary() {
    return Container(
              width: double.infinity,
              height: 130,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  topRowbutton(
                      title: 'Profile summary',
                      tap: () {},
                      buttontitle: 'Add'),
                  Text(
                    'put forward  your educational and carrer journey in a few line',
                    style: TextStyle(
                      color: Colors.blueGrey,
                       fontSize:16,
                    ),
                  ),
                ],
              ),
            );
  }