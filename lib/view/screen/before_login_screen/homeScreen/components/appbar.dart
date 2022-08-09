import 'package:flutter/material.dart';
 AppBar buildAppBar() {
    return AppBar(
     iconTheme: IconThemeData(color: Colors.black),
    toolbarHeight:80,
    elevation:  2,
          backgroundColor:Colors.white,
            title: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search jobs here ...',
                  filled: true,
                  fillColor: Colors.white12,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              
          ),
            ),
   );
  }