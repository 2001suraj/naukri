// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Container logbuildHeader(BuildContext context) {
  return Container(
      height: 110,
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/user.png'),
                    fit: BoxFit.contain),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Username',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text('Complete profile',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 122, 77, 228))),
              ],
            ),
             IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ]));
}
