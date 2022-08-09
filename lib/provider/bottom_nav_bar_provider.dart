// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';
import 'package:naukri/view/screen/before_login_screen/InboxScreen/index_screen.dart';
import 'package:naukri/view/screen/before_login_screen/applies_Screen/appliesScreen.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/mainHomeScreen.dart';
import 'package:naukri/view/screen/before_login_screen/profileScreen/profileScreen.dart';



class BottomNavBarProvider extends ChangeNotifier{
  var _currentScreen = 0;
   get currentScreen => _currentScreen;
    List<Widget>  screen = [
MainHomeScreen(),
 AppliesScreen(),
 InboxScreen(),
 ProfileScreen(),
   ];
    
    void changeScreen(index){
      _currentScreen = index;
notifyListeners();
    }
   
}