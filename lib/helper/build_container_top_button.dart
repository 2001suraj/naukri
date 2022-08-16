// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
Row buid_Container_top_button({required titleText, required buttonText , required ontap}) {
  return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
            titleText ,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextButton(
              child: Text(
                buttonText,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onPressed: ontap,
            )
          ],
        );
}