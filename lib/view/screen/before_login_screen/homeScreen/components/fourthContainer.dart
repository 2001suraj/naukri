// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Container buildfouthContainer() {
  return Container(
    height: 300,
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: Color.fromARGB(141, 255, 255, 255),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Text(
          """
70% hiring 
happens without 
ant job post """,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Colors.black45,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text("""
Top companies on Naukri are hiring by directly
reaching out to  jobseekers without posting a job.
Learn how you can get the most out of this opportunity
""", style: TextStyle(fontSize: 13)),
        TextButton(
          onPressed: () {},
          child: Text(
            " Learn more",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
