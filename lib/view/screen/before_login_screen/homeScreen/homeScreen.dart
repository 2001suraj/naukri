// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naukri/provider/bottom_nav_bar_provider.dart';

import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  

  @override
  Widget build(BuildContext context) {
     BottomNavBarProvider navBarProvider = Provider.of<BottomNavBarProvider>(context);

    return Scaffold(


      backgroundColor: Colors.black,
     body:navBarProvider.screen.elementAt(navBarProvider.currentScreen),
      
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          currentIndex:navBarProvider.currentScreen,
          onTap: navBarProvider.changeScreen,
          items: [
            BottomNavigationBarItem(
              
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_right_rounded),
              label: 'Applies',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }

  
}
