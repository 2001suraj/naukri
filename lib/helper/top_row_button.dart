// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

Row topRowbutton({required title, required buttontitle, required tap, booll , boost}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
    mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
           booll == true
          ? Container(
             margin: EdgeInsets.only(left:5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent.withOpacity(0.2)),
              height: 15,
              width: 85,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_upward_rounded,
                     size: 17,
                    color: Colors.green,
                  ),
                  Text('Boost $boost%', style:TextStyle(color: Colors.green),),

                ],
              ),
            )
          : SizedBox(),
        ],
      ),
     
      TextButton(
        onPressed: tap,
        child: Text(buttontitle),
      ),
    ],
  );
}
