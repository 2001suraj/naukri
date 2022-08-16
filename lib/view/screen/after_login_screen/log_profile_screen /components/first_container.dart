// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
Container firstContainer() {
    return Container(
           width: double.infinity,
           margin:EdgeInsets.all(20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromARGB(60, 143, 138, 138),
                child: Icon(
                  Icons.person_add_alt,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
               Row(
             mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
          SizedBox(width: 20),

              Text(
                'Ram Hari Thapa',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),

               IconButton(onPressed: (){},icon:Icon(Icons.edit, color: Colors.blue,),),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Student, Malhar Degreee College, Hyderbad India',
            style: TextStyle(color:Colors.grey, fontSize: 12),
          ),
            ],
          ),
        );
  }